
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | VAR
    | TOURNE
    | TANTQ
    | SINON
    | SI
    | RPAR
    | PLUS
    | NB of (
# 8 "parser.mly"
       (int)
# 18 "parser.ml"
  )
    | MULT
    | MOINS
    | LPAR
    | IDENT of (
# 9 "parser.mly"
       (string)
# 26 "parser.ml"
  )
    | HPINCEAU
    | FIN
    | FAIRE
    | EP
    | EOF
    | EGAL
    | DIV
    | DEB
    | COUL
    | BPINCEAU
    | AVANCE
    | ALORS
  
end

include MenhirBasics

let _eRR =
  MenhirBasics.Error

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState55
  | MenhirState50
  | MenhirState47
  | MenhirState43
  | MenhirState37
  | MenhirState32
  | MenhirState30
  | MenhirState28
  | MenhirState27
  | MenhirState25
  | MenhirState22
  | MenhirState20
  | MenhirState18
  | MenhirState16
  | MenhirState12
  | MenhirState8
  | MenhirState7
  | MenhirState0

# 1 "parser.mly"
  
open Ast

# 79 "parser.ml"

let rec _menhir_run16 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expression) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v
    | LPAR ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState16
    | MOINS ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState16
    | NB _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState16 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState16

and _menhir_run18 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expression) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v
    | LPAR ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState18
    | MOINS ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState18
    | NB _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState18 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState18

and _menhir_run22 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expression) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
    | LPAR ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | MOINS ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState22
    | NB _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState22 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState22

and _menhir_run20 : _menhir_env -> 'ttv_tail * _menhir_state * (Ast.expression) -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v
    | LPAR ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | MOINS ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState20
    | NB _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState20 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState20

and _menhir_goto_expression : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.expression) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState12 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack)
        | MOINS ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | MULT ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack)
        | RPAR ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (e : (Ast.expression))) = _menhir_stack in
            let _v : (Ast.expression) = 
# 53 "parser.mly"
                           ( e )
# 178 "parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState16 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack)
        | MOINS ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | MULT ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack)
        | ALORS | AVANCE | BPINCEAU | COUL | DEB | EP | FAIRE | FIN | HPINCEAU | IDENT _ | PLUS | RPAR | SI | SINON | TANTQ | TOURNE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (e1 : (Ast.expression))), _, (e2 : (Ast.expression))) = _menhir_stack in
            let _v : (Ast.expression) = 
# 48 "parser.mly"
                                            (Plus (e1,e2))
# 204 "parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState18 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack)
        | ALORS | AVANCE | BPINCEAU | COUL | DEB | EP | FAIRE | FIN | HPINCEAU | IDENT _ | MOINS | MULT | PLUS | RPAR | SI | SINON | TANTQ | TOURNE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (e1 : (Ast.expression))), _, (e2 : (Ast.expression))) = _menhir_stack in
            let _v : (Ast.expression) = 
# 51 "parser.mly"
                                            (Mult (e1,e2))
# 226 "parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState20 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (e1 : (Ast.expression))), _, (e2 : (Ast.expression))) = _menhir_stack in
        let _v : (Ast.expression) = 
# 52 "parser.mly"
                                           (Div (e1,e2))
# 242 "parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
    | MenhirState22 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack)
        | MULT ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack)
        | ALORS | AVANCE | BPINCEAU | COUL | DEB | EP | FAIRE | FIN | HPINCEAU | IDENT _ | MOINS | PLUS | RPAR | SI | SINON | TANTQ | TOURNE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (e1 : (Ast.expression))), _, (e2 : (Ast.expression))) = _menhir_stack in
            let _v : (Ast.expression) = 
# 49 "parser.mly"
                                            (Moins (e1,e2))
# 260 "parser.ml"
             in
            _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState8 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack)
        | MOINS ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | MULT ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack)
        | AVANCE | BPINCEAU | COUL | DEB | EP | FIN | HPINCEAU | IDENT _ | SI | SINON | TANTQ | TOURNE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (e : (Ast.expression))) = _menhir_stack in
            let _v : (Ast.instruction) = 
# 35 "parser.mly"
                        ( Tourne e )
# 288 "parser.ml"
             in
            _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState25 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack)
        | FAIRE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | AVANCE ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState27
            | BPINCEAU ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState27
            | COUL ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState27
            | DEB ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState27
            | EP ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState27
            | HPINCEAU ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState27
            | IDENT _v ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
            | SI ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState27
            | TANTQ ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState27
            | TOURNE ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState27
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState27)
        | MOINS ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | MULT ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState28 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | ALORS ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | AVANCE ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState30
            | BPINCEAU ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState30
            | COUL ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState30
            | DEB ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState30
            | EP ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState30
            | HPINCEAU ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState30
            | IDENT _v ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState30 _v
            | SI ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState30
            | TANTQ ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState30
            | TOURNE ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState30
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState30)
        | DIV ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack)
        | MOINS ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | MULT ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState32 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack)
        | MOINS ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | MULT ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack)
        | AVANCE | BPINCEAU | COUL | DEB | EP | FIN | HPINCEAU | IDENT _ | SI | SINON | TANTQ | TOURNE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (id : (
# 9 "parser.mly"
       (string)
# 411 "parser.ml"
            ))), _, (e : (Ast.expression))) = _menhir_stack in
            let _v : (Ast.instruction) = 
# 38 "parser.mly"
                               ( Egal(id,e) )
# 416 "parser.ml"
             in
            _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState43 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DIV ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack)
        | MOINS ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack)
        | MULT ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack)
        | PLUS ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack)
        | AVANCE | BPINCEAU | COUL | DEB | EP | FIN | HPINCEAU | IDENT _ | SI | SINON | TANTQ | TOURNE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (e : (Ast.expression))) = _menhir_stack in
            let _v : (Ast.instruction) = 
# 33 "parser.mly"
                      ( Avance e )
# 444 "parser.ml"
             in
            _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_list_instruction_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.instruction list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState37 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | FIN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _, (i : (Ast.instruction list))) = _menhir_stack in
            let _v : (Ast.instruction) = 
# 34 "parser.mly"
                            (Bloc(i))
# 473 "parser.ml"
             in
            _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState47 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (x : (Ast.instruction))), _, (xs : (Ast.instruction list))) = _menhir_stack in
        let _v : (Ast.instruction list) = 
# 213 "<standard.mly>"
    ( x :: xs )
# 489 "parser.ml"
         in
        _menhir_goto_list_instruction_ _menhir_env _menhir_stack _menhir_s _v
    | MenhirState7 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | FIN ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s, (d : (string list))), _, (i : (Ast.instruction list))) = _menhir_stack in
            let _v : (Ast.programme) = 
# 27 "parser.mly"
                                         ((d,i) )
# 505 "parser.ml"
             in
            let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
            let _menhir_stack = Obj.magic _menhir_stack in
            assert (not _menhir_env._menhir_error);
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | EOF ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, (p : (Ast.programme))) = _menhir_stack in
                let _v : (Ast.programme) = 
# 24 "parser.mly"
                   (p)
# 519 "parser.ml"
                 in
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_1 : (Ast.programme)) = _v in
                Obj.magic _1
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        _menhir_fail ()

and _menhir_goto_instruction : _menhir_env -> 'ttv_tail -> _menhir_state -> (Ast.instruction) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState7 | MenhirState47 | MenhirState37 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | AVANCE ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | BPINCEAU ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | COUL ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | DEB ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | EP ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | HPINCEAU ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | IDENT _v ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
        | SI ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | TANTQ ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | TOURNE ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | FIN ->
            _menhir_reduce23 _menhir_env (Obj.magic _menhir_stack) MenhirState47
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState47)
    | MenhirState30 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | SINON ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | AVANCE ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | BPINCEAU ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | COUL ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | DEB ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | EP ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | HPINCEAU ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | IDENT _v ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
            | SI ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | TANTQ ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | TOURNE ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState50
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState50)
        | AVANCE | BPINCEAU | COUL | DEB | EP | FIN | HPINCEAU | IDENT _ | SI | TANTQ | TOURNE ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let (((_menhir_stack, _menhir_s), _, (e : (Ast.expression))), _, (i : (Ast.instruction))) = _menhir_stack in
            let _v : (Ast.instruction) = 
# 39 "parser.mly"
                                        (Sialors(e,i))
# 615 "parser.ml"
             in
            _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState50 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((((_menhir_stack, _menhir_s), _, (e : (Ast.expression))), _, (i : (Ast.instruction))), _, (i2 : (Ast.instruction))) = _menhir_stack in
        let _v : (Ast.instruction) = 
# 40 "parser.mly"
                                                             (Sias(e,i,i2))
# 631 "parser.ml"
         in
        _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v
    | MenhirState27 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (((_menhir_stack, _menhir_s), _, (e : (Ast.expression))), _, (i : (Ast.instruction))) = _menhir_stack in
        let _v : (Ast.instruction) = 
# 41 "parser.mly"
                                             (Tantq(e,i))
# 641 "parser.ml"
         in
        _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_run9 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 8 "parser.mly"
       (int)
# 650 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (n : (
# 8 "parser.mly"
       (int)
# 658 "parser.ml"
    )) = _v in
    let _v : (Ast.expression) = 
# 46 "parser.mly"
              (Nombre n)
# 663 "parser.ml"
     in
    _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v

and _menhir_run10 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | NB _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (n : (
# 8 "parser.mly"
       (int)
# 680 "parser.ml"
        )) = _v in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _v : (Ast.expression) = 
# 50 "parser.mly"
                    (Mun n)
# 686 "parser.ml"
         in
        _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run12 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState12 _v
    | LPAR ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState12
    | MOINS ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState12
    | NB _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState12 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState12

and _menhir_run13 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 9 "parser.mly"
       (string)
# 718 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let (id : (
# 9 "parser.mly"
       (string)
# 726 "parser.ml"
    )) = _v in
    let _v : (Ast.expression) = 
# 47 "parser.mly"
               ( Ident id )
# 731 "parser.ml"
     in
    _menhir_goto_expression _menhir_env _menhir_stack _menhir_s _v

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_reduce23 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (Ast.instruction list) = 
# 211 "<standard.mly>"
    ( [] )
# 745 "parser.ml"
     in
    _menhir_goto_list_instruction_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _v
    | LPAR ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | MOINS ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState8
    | NB _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState8 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState8

and _menhir_run25 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _v
    | LPAR ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | MOINS ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState25
    | NB _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState25

and _menhir_run28 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | LPAR ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | MOINS ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState28
    | NB _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState28 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState28

and _menhir_run31 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 9 "parser.mly"
       (string)
# 809 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EGAL ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | IDENT _v ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
        | LPAR ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | MOINS ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState32
        | NB _v ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState32 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState32)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run34 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (Ast.instruction) = 
# 37 "parser.mly"
             ( HautPinceau )
# 847 "parser.ml"
     in
    _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v

and _menhir_run35 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | NB _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (t : (
# 8 "parser.mly"
       (int)
# 864 "parser.ml"
        )) = _v in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _v : (Ast.instruction) = 
# 43 "parser.mly"
             (Epaisseur t)
# 870 "parser.ml"
         in
        _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run37 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | AVANCE ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | BPINCEAU ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | COUL ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | DEB ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | EP ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | HPINCEAU ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | IDENT _v ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
    | SI ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | TANTQ ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | TOURNE ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | FIN ->
        _menhir_reduce23 _menhir_env (Obj.magic _menhir_stack) MenhirState37
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState37

and _menhir_run38 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | NB _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | NB _v ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_stack = (_menhir_stack, _v) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | NB _v ->
                let _menhir_stack = Obj.magic _menhir_stack in
                let _menhir_env = _menhir_discard _menhir_env in
                let _menhir_stack = Obj.magic _menhir_stack in
                let (b : (
# 8 "parser.mly"
       (int)
# 938 "parser.ml"
                )) = _v in
                let (((_menhir_stack, _menhir_s), (r : (
# 8 "parser.mly"
       (int)
# 943 "parser.ml"
                ))), (g : (
# 8 "parser.mly"
       (int)
# 947 "parser.ml"
                ))) = _menhir_stack in
                let _v : (Ast.instruction) = 
# 42 "parser.mly"
                         (Couleur(r,g,b))
# 952 "parser.ml"
                 in
                _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let _menhir_stack = Obj.magic _menhir_stack in
                let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_run42 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _menhir_stack = Obj.magic _menhir_stack in
    let _v : (Ast.instruction) = 
# 36 "parser.mly"
             ( BasPinceau )
# 981 "parser.ml"
     in
    _menhir_goto_instruction _menhir_env _menhir_stack _menhir_s _v

and _menhir_run43 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | LPAR ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | MOINS ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState43
    | NB _v ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState43 _v
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState43

and _menhir_goto_list_declarations_ : _menhir_env -> 'ttv_tail -> _menhir_state -> (string list) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState0 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | DEB ->
            let _menhir_stack = Obj.magic _menhir_stack in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            (match _tok with
            | AVANCE ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState7
            | BPINCEAU ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState7
            | COUL ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState7
            | DEB ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState7
            | EP ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState7
            | HPINCEAU ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState7
            | IDENT _v ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState7 _v
            | SI ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState7
            | TANTQ ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState7
            | TOURNE ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState7
            | FIN ->
                _menhir_reduce23 _menhir_env (Obj.magic _menhir_stack) MenhirState7
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState7)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let _menhir_stack = Obj.magic _menhir_stack in
            let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s)
    | MenhirState55 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_stack = Obj.magic _menhir_stack in
        let ((_menhir_stack, _menhir_s, (x : (string))), _, (xs : (string list))) = _menhir_stack in
        let _v : (string list) = 
# 213 "<standard.mly>"
    ( x :: xs )
# 1057 "parser.ml"
         in
        _menhir_goto_list_declarations_ _menhir_env _menhir_stack _menhir_s _v
    | _ ->
        _menhir_fail ()

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState55 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState50 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState47 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState43 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState37 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState32 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState30 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState28 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState27 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState25 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState22 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState20 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState18 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState16 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState12 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState8 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState7 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s
    | MenhirState0 ->
        let _menhir_stack = Obj.magic _menhir_stack in
        raise _eRR

and _menhir_reduce21 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _v : (string list) = 
# 211 "<standard.mly>"
    ( [] )
# 1143 "parser.ml"
     in
    _menhir_goto_list_declarations_ _menhir_env _menhir_stack _menhir_s _v

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | IDENT _v ->
        let _menhir_stack = Obj.magic _menhir_stack in
        let _menhir_env = _menhir_discard _menhir_env in
        let _menhir_stack = Obj.magic _menhir_stack in
        let (id : (
# 9 "parser.mly"
       (string)
# 1160 "parser.ml"
        )) = _v in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        let _v : (string) = 
# 30 "parser.mly"
                ( id )
# 1166 "parser.ml"
         in
        let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
        let _menhir_stack = Obj.magic _menhir_stack in
        assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        (match _tok with
        | VAR ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState55
        | DEB ->
            _menhir_reduce21 _menhir_env (Obj.magic _menhir_stack) MenhirState55
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState55)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let _menhir_stack = Obj.magic _menhir_stack in
        let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s

and _menhir_discard : _menhir_env -> _menhir_env =
  fun _menhir_env ->
    let lexer = _menhir_env._menhir_lexer in
    let lexbuf = _menhir_env._menhir_lexbuf in
    let _tok = lexer lexbuf in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    }

and s : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Ast.programme) =
  fun lexer lexbuf ->
    let _menhir_env = {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = Obj.magic ();
      _menhir_error = false;
    } in
    Obj.magic (let _menhir_stack = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | VAR ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | DEB ->
        _menhir_reduce21 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0)

# 269 "<standard.mly>"
  

# 1224 "parser.ml"
