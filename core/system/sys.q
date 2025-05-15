func sys.hook event, action {
    hookmap[event] = action
    print("Hooked", event, "=>", action)
}