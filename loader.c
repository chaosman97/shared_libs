#include <dlfcn.h>
#include <assert.h>
void main(){
    void* handle = dlopen("./libshared.so",RTLD_NOW);
    assert(handle!=(void*)(0));
    void (*HelloFunc)()=dlsym(handle,"hello");
    HelloFunc();
    assert(dlclose(handle)==0);
    return;
}