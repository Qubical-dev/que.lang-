aithink {
    trigger: event("user-action")
    action: process("decision")
    route: aipipe.main
    log: true
}