parser {
    rule "ai" {
        match: [ainode, aibrain, aithink, aipipe, aimem]
        route: ai-engine
    }

    rule "keyla" {
        alias: "let"
        override: true
    }

    rule "exec" {
        keyword: "keyla"
        maps_to: "run"
    }
}