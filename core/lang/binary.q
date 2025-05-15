# binary.q - QueLang Binary Output Feature

fn emit-binary(file, data) {
    out = open(file, "wb")
    write(out, data)
    close(out)
}

fn int8(val) {
    return chr(val & 0xFF)
}

fn build-baremetal(name, code) {
    header = "QUEBIN"
    bin = header + code
    emit-binary(name, bin)
}