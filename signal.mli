type handle
type signal = string
type arg = [ `Float of float
           | `Int of int
           | `Pair of int * int
           | `String of string
           ]
type callback = arg list -> unit

val debug      : bool -> unit
val emit       : signal -> arg list -> unit
val get        : handle -> signal * callback
val connect    : signal -> callback -> handle
val disconnect : signal -> handle -> unit
