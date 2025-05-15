aipipe main {
    stage: [
        sense, filter, evaluate, act
    ]
    fallback: "default-handler"
}