#include "Single_LinkedList.h"

void Insert_Node_At_Beginning(node_t **List_Head, void *Data)
{
    node_t *Temp_Node = NULL;

    Temp_Node = (node_t *)malloc(sizeof(node_t));
    if(Temp_Node)
    {
        /* Add the value or data to the new node */
        Temp_Node->Data = Data;

        /* Check if the Linked List is Empty */
        if(NULL == *List_Head)
        {
            /* Empty */
            Temp_Node->Next = NULL;
            *List_Head = Temp_Node;
        }
        else
        {
            /* Not Empty */
            Temp_Node->Next = *List_Head;
            *List_Head = Temp_Node;
        }
    }
    else{/*Nothing */}
}

void Insert_Node_At_End(node_t **List_Head, void *Data)
{
    node_t *Temp_Node = NULL;
    node_t *Last_Node = *List_Head;

    Temp_Node = (node_t *)malloc(sizeof(node_t));
    if(Temp_Node)
    {
        Temp_Node->Data = Data; /* Add the value or data to the new node */
        Temp_Node->Next = NULL; /* It will be a last node */

        /* Check if the Linked List is Empty */
        if(NULL == *List_Head)
        {
            /* Empty */
            *List_Head = Temp_Node;
        }
        else
        {
            /* Not Empty */
            while(Last_Node->Next)
            {
                Last_Node = Last_Node->Next;
            }
            Last_Node->Next = Temp_Node;
        }
    }
    else{/* Nothing */}
}

void Insert_Node_After(node_t *List_Head, uint32 Node_Position, void *Data)
{
    node_t *Temp_Node = NULL; /* New Node */
    uint32 List_Length = Get_Length(List_Head);
    uint32 Node_Counter = 1;

    if(Node_Position > List_Length)
    {
        printf("Invalid Node Position -> List only have (%d) Nodes \n", List_Length);
    }
    else
    {
        while(Node_Counter < Node_Position)
        {
            Node_Counter++;
            List_Head = List_Head->Next;
        }
        Temp_Node = (node_t *)malloc(sizeof(node_t));
        if(Temp_Node)
        {
            Temp_Node->Data = Data;
            Temp_Node->Next = List_Head->Next;
            List_Head->Next = Temp_Node;

        }else{/* Nothing */}
    }
}

void Delete_Node_At_Beginning(node_t **List_Head)
{
    node_t *Temp_Node = *List_Head;
    uint32 List_Length = Get_Length(*List_Head);

    if(!List_Length)
    {
        printf("List is Empty, nothing to be deleted !!\n");
    }
    else
    {
        *List_Head = Temp_Node->Next;
        free(Temp_Node);
    }
}

void Delete_Node_At_End(node_t *List_Head)
{
    node_t *Temp_Node = NULL;
    uint32 List_Length = Get_Length(List_Head);
    uint32 List_Counter = 1;

    while(List_Counter < List_Length)
    {
        List_Head = List_Head->Next;
        List_Counter++;
    }
    Temp_Node = List_Head->Next;
    List_Head->Next = NULL;
    free(Temp_Node);
}

void Delete_Node_At_Position(node_t **List_Head, uint32 Node_Position)
{
    node_t *Node_List_Counter = *List_Head;
    node_t *Temp_Node = *List_Head;
    uint32 List_Length = Get_Length(*List_Head);
    uint32 List_Counter = 1;

    if(1 == Node_Position)
    {
        Delete_Node_At_Beginning(List_Head);
    }
    else if(List_Length == Node_Position)
    {
        Delete_Node_At_End(*List_Head);
    }
    else if(Node_Position < List_Length)
    {
        while(List_Counter < Node_Position)
        {
            Node_List_Counter = Node_List_Counter->Next;
            List_Counter++;
        }
        Temp_Node = Node_List_Counter->Next;
        Node_List_Counter->Next = Temp_Node->Next;
        free(Temp_Node);
    }
    else
    {
        printf("Invalid Position !!\n");
    }


}

void Dislpay_All_Nodes(node_t *List_Head)
{
    if(NULL == List_Head)
    {
        printf("List is Empty !!\n");
    }
    else
    {
       printf("==> Data : ");
       while(List_Head)
        {

            printf("0x%X -> ", *((uint32 *)List_Head->Data));
            List_Head = List_Head->Next;
        }
        printf("NULL \n");
    }
}

uint32 Get_Length(node_t *List_Head)
{
    uint32 Node_Count = 0;

    while(List_Head)
    {
        Node_Count++;
        List_Head = List_Head->Next;
    }

    return Node_Count;
}

void Reverse_List(node_t **List_Head)
{
    node_t *Prev_Node = NULL;
    node_t *Next_Node = NULL;
    node_t *Current_Node = *List_Head;

    while(Current_Node != NULL)
    {
        /* Store the next node */
        Next_Node = Current_Node->Next;

        /* Reverse current node's pointer */
        Current_Node->Next = Prev_Node;

        /* Move pointers one position ahead */
        Prev_Node = Current_Node;
        Current_Node = Next_Node;
    }

    *List_Head = Prev_Node; /* The last Node */
}