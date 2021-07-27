cdef extern from "GC9A01.h":
    void GC9A01_begin(int spi, int rst, int dc, int backlignt)
    void test()
    void GC9A01_pixel(int x,int y, char color)
    void GC9A01_bitmap24(int x, int y, char *pBmp, char chWidth, char chHeight)
    void GC9A01_display()
    void GC9A01_clear()
    void GC9A01_backlight(int on)

def py_GC9A01_begin(spi: int, rst: int, dc: int, backlight: int) -> None:
    GC9A01_begin(spi, rst, dc, backlight)
    
def py_test() -> None:
    test()

    
def py_GC9A01_bitmap24(x: int, y: int, bmp: bytes, width: int, height: int) -> None:
    GC9A01_bitmap24(x, y, bmp, width, height)


def py_GC9A01_display() ->None:
    GC9A01_display()


def py_GC9A01_clear() ->None:
    GC9A01_clear()


def py_GC9A01_backlight(on: int) ->None:
    GC9A01_backlight(on)
