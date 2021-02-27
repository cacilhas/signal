type t = Uuid.t

let next () : t = Uuid_unix.create ()
