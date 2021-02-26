# Signal

Signal protocol for OCaml.

## Use

```ocaml
let id =
    (* Connecting a handle to a signal *)
    Signal.connect "update" Renderer.update

let () =
    (* Emit signal *)
    Signal.emit "update" [`Int 12]
```

### Types

```ocaml
type handle
```

The handle id.

```ocaml
type signal = string
```

The signal.

```ocaml
type arg = [ `Float of float
           | `Int of int
           | `Pair of int * int
           | `String of string
           ]
```

Argument type to the arguments list.

```ocaml
type callback = arg list -> unit
```

The handle’s callback.

### Functions

```ocaml
val debug : bool -> unit
```

Enable or disable debugging.

```ocaml
val emit : signal -> arg list -> unit
```

Emite a signal.

```ocaml
val get : handle -> signal * callback
```

Return a handle by its id.

```ocaml
val connect : signal -> callback -> handle
```

Connect a callback to a signal, returning the handle id.

```ocaml
val disconnect : signal -> handle -> unit
```

Disconnect a handle from a signal.
