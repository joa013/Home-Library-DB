CREATE TABLE "Author"(
  "author_id" INTEGER NOT NULL, 
  "f_name" TEXT NOT NULL, 
  "l_name" TEXT NOT NULL, 
  PRIMARY KEY("author_id" AUTOINCREMENT)
  );

CREATE TABLE "Book" (
	"book_id"	INTEGER NOT NULL,
	"book_title"	TEXT NOT NULL,
	"pub_year"	INTEGER,
	"cat_id"	INTEGER,
	"lang_id"	INTEGER,
	"publisher_id"	INTEGER,
	PRIMARY KEY("book_id" AUTOINCREMENT)
);

CREATE TABLE "Book_Author" (
	"book_id"	INTEGER NOT NULL,
	"author_id"	INTEGER NOT NULL,
	PRIMARY KEY("book_id","author_id")
);

CREATE TABLE "Category" (
	"cat_id"	INTEGER NOT NULL,
	"cat_name"	TEXT NOT NULL,
	PRIMARY KEY("cat_id" AUTOINCREMENT)
);

CREATE TABLE "Language" (
	"lang_id"	INTEGER NOT NULL,
	"language"	TEXT,
	PRIMARY KEY("lang_id" AUTOINCREMENT)
);

CREATE TABLE "Loan" (
	"loan_id"	INTEGER NOT NULL,
	"book_id"	INTEGER NOT NULL,
	"member_id"	INTEGER NOT NULL,
	"loan_date"	TEXT NOT NULL,
	"return_date"	TEXT,
	PRIMARY KEY("loan_id" AUTOINCREMENT)
);

CREATE TABLE "Member" (
	"member_id"	INTEGER NOT NULL,
	"f_name"	TEXT NOT NULL,
	"l_name"	TEXT NOT NULL,
	"email"	TEXT,
	PRIMARY KEY("member_id" AUTOINCREMENT)
);

CREATE TABLE "Publisher" (
	"pub_id"	INTEGER NOT NULL,
	"pub_name"	TEXT NOT NULL,
	PRIMARY KEY("pub_id")
);

CREATE TABLE "Shelf" (
	"shelf_id"	INTEGER NOT NULL,
	"shelf"	TEXT NOT NULL,
	PRIMARY KEY("shelf_id" AUTOINCREMENT)
);
