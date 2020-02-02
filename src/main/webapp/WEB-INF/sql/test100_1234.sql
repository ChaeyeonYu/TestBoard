create table tbl_test_board(
    board_num NUMBER PRIMARY KEY,
    board_title VARCHAR2(200) not null, 
    board_content VARCHAR2(2000),                
    board_writer VARCHAR2(100) not null,          
    board_regdate TIMESTAMP default sysdate,    
    board_veiwcnt NUMBER default 0              
);

create SEQUENCE seq_board_num;

commit;