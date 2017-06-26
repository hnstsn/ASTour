create table ASTLike (
  mpk number,
  spk number,
  constraint like_fk_mpk foreign key (mpk) references ASTMember (mpk),
  constraint like_fk_spk foreign key (spk) references sns_tbl (spk)
);

commit;
