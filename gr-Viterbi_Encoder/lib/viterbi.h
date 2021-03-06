#ifndef _VITERBI_H_
#define _VITERBI_H_

void init_viterbiEncoder();
void init_viterbiDecoder();

int get_viterbiEncoder();
int get_viterbiDecoder();

void set_viterbiEncoder(int eId);
void set_viterbiDecoder(int dId);

void viterbi_encoding(int eId, unsigned char *iBuf, signed char *oBuf);
void viterbi_decoding(int dId, signed char *iBuf, unsigned char *oBuf);

void viterbi_puncturing(char rate, signed char *iBuf, signed char *oBuf);
void viterbi_depuncturing(char rate, signed char *iBuf, signed char *oBuf);

#define K            7     // constraits length
#define IN_RATE      1     // input per cycle
#define OUT_RATE     2     // output per cycle
// for encoder : 1 represent XOR operation
#define MASK0        0133  // 1011011
#define MASK1        0171  // 1111001 
#define MASK2        0165  // 1110101 

// puncturing
#define PUNC_RATE_1_2  1
#define PUNC_RATE_2_3  2
#define PUNC_RATE_1_3  3

//#define CODE_BLOCK      56   // TB:148, CRC:16
//#define CODE_BLOCK      52
#define CODE_BLOCK      40
#define ZERO_PADDING    8     // zero pading for trellis termination
#define INPUT_LEN       (CODE_BLOCK + ZERO_PADDING)       // input buffer size, unit is bit
#define INPUT_LEN_BYTE  (INPUT_LEN/8 + 1)                 // input buffer size, unit is byte
#define OUTPUT_LEN      (INPUT_LEN * OUT_RATE / IN_RATE)  // output buffer size, unit is bit
#define OUTPUT_LEN_BYTE (OUTPUT_LEN/8)                // output buffer size, unit is byte

#define SM_STEP      INPUT_LEN    // number of column in survivor memory. must be > K*5
#define SM_STATE     64   // number of low in survivor memory. 2^(K-1)
#define IN_BRANCH    2     // number of input branch in trellis diagram. 2^IN_RATE

typedef struct {
  enum entity_state state;
} viterbiEncoder_t;

struct survivorMemory_t {
  int step, state;
  // previous node information;
  unsigned char branchCount;                  // ??
  struct survivorMemory_t *prev[IN_BRANCH];   // pointer to states in previous trellis column
  unsigned char input[IN_BRANCH];             // corresponding input data
  signed char output[IN_BRANCH][OUT_RATE];           // output data of code sequence
  int cost[IN_BRANCH];                        // branch cost
  unsigned char minPathId;                    // input path that has minimum cost.
  int minCost;                                // the cost of selected path
};

typedef struct {
  enum entity_state state;
  struct survivorMemory_t smu[SM_STEP][SM_STATE];
  int init_cost[SM_STATE];
  int initFlag;
} viterbiDecoder_t;

#endif
