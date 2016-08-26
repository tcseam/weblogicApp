--Start Writing Table ddls
DROP TABLE SPORT;

CREATE TABLE SPORT
(
	SPID NUMERIC(9,0)  NOT NULL  ,
	SPNAME CHARACTER VARYING(256) ,
	SportVer NUMERIC (4, 0)  NOT NULL ,
	dmLastUpdateDate	TIMESTAMP WITH TIME ZONE	NOT NULL  ,
	PRIMARY KEY ( 
	SPID  )
);
DROP TABLE SPORT_1;

CREATE TABLE SPORT_1
(
	SPID NUMERIC(9,0)  NOT NULL  ,
	SPNAME CHARACTER VARYING(256)  , 
	SPFILEFILEDATA BYTEA  , 
	SPFILEFILENAME CHARACTER VARYING(256) ,
	Sport_1Ver NUMERIC (4, 0)  NOT NULL ,
	dmLastUpdateDate	TIMESTAMP WITH TIME ZONE	NOT NULL  ,
	PRIMARY KEY ( 
	SPID  )
);
--End Writing Table ddls
--Start Writing Index ddls
--End Writing Index ddls
--Start Writing Keys ddls
--End Writing Keys ddls
--Start Writing Sequence ddls
--End Writing Sequence ddls
