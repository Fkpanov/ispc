
export uniform int width() { return programCount; }


export void f_fu(uniform float RET[], uniform float aFOO[], uniform float b) {
    float a = aFOO[programIndex];
    float i, r = a;
    float ret;
    if (a >= 4)
        ret = 0;
    else {
        cfor (i = 0; i < a; ++i) {
            if (r == b) 
                r += 10;
            ++r;
            if (r == 2) break;
        }
        ret = r;
    }
    RET[programIndex] = ret;
}

export void result(uniform float RET[]) {
    RET[programIndex] = 0;
    RET[0] = 2;
    RET[1] = 4;
    RET[2] = 16;
}
