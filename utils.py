

def repack_tuple(input: tuple) -> dict:
    return {
        'id': input[0],
        'name': input[1],
        'description': input[2],
        'type': input[3]
    }
