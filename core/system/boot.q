func boot.sequence steps {
    foreach step in steps {
        exec(step)
    }
}