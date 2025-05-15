func mem.inspect {
    print("Memory State: OK")
}
func mem.alloc name, size {
    memmap[name] = size
    print("Allocated", name, "with size", size)
}
func mem.free name {
    del memmap[name]
    print("Freed", name)
}