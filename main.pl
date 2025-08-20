persona(alice).
persona(robert).
persona(clara).
persona(james).

esposo(alice, lord_henry).
sobrina(clara, lord_henry).
socio(james, lord_henry).
empleado(robert, lord_henry).

motivo(alice, herencia).
motivo(robert, maltrato).
motivo(clara, deuda).
motivo(james, negocios).

acceso(alice, veneno).
acceso(robert, cuchillo).
acceso(clara, cuerda).
acceso(james, pistola).

estuvo(alice, sala).
estuvo(robert, cocina).
estuvo(clara, biblioteca).
estuvo(james, estudio).

tiene_motivo(X) :- motivo(X,_).

estuvo_biblioteca(X) :- estuvo(X,biblioteca).

oportunidad(X) :- tiene_motivo(X), estuvo_biblioteca(X).

acceso_arma(X) :- acceso(X,cuerda).

culpable(X) :- tiene_motivo(X), oportunidad(X), acceso_arma(X).

