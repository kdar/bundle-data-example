/* data.c */
/* https://code.google.com/p/go-wiki/wiki/GcToolchainTricks */
#include "runtime.h"
extern byte _data1[], _edata1, _data2[], _edata2;

void ·GetData(Slice a, Slice b) {
  a.array = _data1;
  a.len = a.cap = &_edata1 - _data1;
  b.array = _data2;
  b.len = b.cap = &_edata2 - _data2;
  FLUSH(&a);
  FLUSH(&b);
}