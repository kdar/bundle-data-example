/* data.S, as -o data.syso */
/*wget http://ftp.gnu.org/gnu/binutils/binutils-2.22.tar.bz2   # any newer version also works, obviously
tar xf binutils-2.22.tar.bz2
cd binutils-2.22
mkdir build; cd build
../configure --target=i386-foo-pe --enable-ld=no --enable-gold=no
make
# use gas/as-new to assemble your data.S*/

.section .rdata,"dr" /* put in COFF section .rdata */
.globl _data1 /* no longer need to prepend package name here */
.globl _edata1
_data1:
.incbin "data1.txt"
_edata1:

.globl _data2 /* no longer need to prepend package name here */
.globl _edata2
_data2:
.incbin "data2.txt"
_edata2:
