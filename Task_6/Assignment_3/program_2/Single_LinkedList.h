#ifndef SINGLE_LINKEDLIST_H
#define SINGLE_LINKEDLIST_H

#include <stdio.h>
#include <stdlib.h>
#include "platform.h"


/**
  * @member (Data) : It holds the actual value or data associated with the node
  * @member (Next) : It stores the memory address of the next node in the sequence
  */
typedef struct node {
    void *Data;
    struct node *Next;
}node_t;


/**
  * @brief  insert a node at the beginning of a Linked List
  * @param  (List_Head) Pointer to the Linked List Head
  * @param  (Data) Pointer to the value or data will be added
  **/
void Insert_Node_At_Beginning(node_t **List_Head, void *Data);

/**
  * @brief  insert a node at the end of a Linked List
  * @param  (List_Head) Pointer to the Linked List Head
  * @param  (Data) Pointer to the value or data will be added
  **/
void Insert_Node_At_End(node_t **List_Head, void *Data);

/**
  * @brief  insert a node after a given node in a Linked List
  * @param  (List_Head) Pointer to the Linked List Head
  * @param  (Data) Pointer to the value or data will be added
  * @param  (Node_Position) The previous position of the New Node
  **/
void Insert_Node_After(node_t *List_Head, uint32 Node_Position, void *Data);

/**
  * @brief  Delete the First Node of the Linked List
  * @param  (List_Head) Pointer to the Linked List Head
  **/
void Delete_Node_At_Beginning(node_t **List_Head);

/**
  * @brief  Delete the Last Node of the Linked List
  * @param  (List_Head) Pointer to the Linked List Head
  **/
void Delete_Node_At_End(node_t *List_Head);

/**
  * @brief  Delete a Node of the Linked List
  * @param  (List_Head) Pointer to the Linked List Head
  * @param  (Node_Position) The position of the Deleted Node
  **/
void Delete_Node_At_Position(node_t **List_Head, uint32 Node_Position);

/**
  * @brief  Dislpay all Nodes at the Linked List
  * @param  (List_Head) Pointer to the Linked List Head
  **/
void Dislpay_All_Nodes(node_t *List_Head);

/**
  * @brief  Get the Length of the Linked List => Number Of Nodes
  * @param  (List_Head) Pointer to the Linked List Head
  **/
uint32 Get_Length(node_t *List_Head);

/**
  * @brief Reverse the list.
  * @param (List_Head) Pointer to the Linked List Head
  */
void Reverse_List(node_t **List_Head);


#endif // SINGLE_LINKEDLIST_H