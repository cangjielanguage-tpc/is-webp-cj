package is_webp_cj

protected func StartWith(input: Array<Byte>, target: Array<?Byte>) : Bool {
    if (input.size < target.size) {
        return false
    }

    for (i in 0..target.size) {
        if (let Some(targetByte) <- target[i]) {
            if (targetByte != input[i]) {
                return false
            }
        }
    }
    return true

}