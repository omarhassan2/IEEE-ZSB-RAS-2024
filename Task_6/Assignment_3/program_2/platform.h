#ifndef PLATFORM_H
#define PLATFORM_H


/**
  *   @brief          8bit Type Processor
  *   @implements     CPU_TYPE_enumeration
  */
#define CPU_TYPE_8 8

/**
  *   @brief          16bit Type Processor
  *   @implements     CPU_TYPE_enumeration
  */
#define CPU_TYPE_16 16

/**
  *   @brief          32bit Type Processor
  *   @implements     CPU_TYPE_enumeration
  */
#define CPU_TYPE_32 32

/**
  *   @brief          64bit Type Processor
  *   @implements     CPU_TYPE_enumeration
  */
#define CPU_TYPE_64 64

/**
  *   @brief          Choose Processor Type
  *   @implements     CPU_TYPE_enumeration
  */
#define CPU_TYPE (CPU_TYPE_64)


#if (CPU_TYPE == CPU_TYPE_64)
typedef unsigned char boolean;
typedef unsigned char uint8;
typedef unsigned short uint16;
typedef unsigned int uint32;
typedef unsigned long long uint64;
typedef signed char sint8;
typedef signed short sint16;
typedef signed int sint32;
typedef signed long long sint64;
typedef float float32;
typedef double float64;

#elif (CPU_TYPE == CPU_TYPE_32)
typedef unsigned char boolean;
typedef unsigned char uint8;
typedef unsigned short uint16;
typedef unsigned long uint32;
typedef unsigned long long uint64;
typedef signed char sint8;
typedef signed short sint16;
typedef signed long sint32;
typedef signed long long sint64;
typedef float float32;
typedef double float64;

#elif (CPU_TYPE == CPU_TYPE_16)
typedef unsigned char boolean;
typedef unsigned char uint8;
typedef unsigned short uint16;
typedef unsigned long uint32;
typedef unsigned long long uint64;
typedef signed char sint8;
typedef signed short sint16;
typedef signed long sint32;
typedef signed long long sint64;
typedef float float32;
typedef double float64;

#elif (CPU_TYPE == CPU_TYPE_8)
typedef bit boolean;
typedef unsigned char uint8;
typedef unsigned short uint16;
typedef unsigned long uint32;
typedef signed char sint8;
typedef signed short sint16;
typedef signed long sint32;
typedef float float32;
#endif


#endif // PLATFORM_H