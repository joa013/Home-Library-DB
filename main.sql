CREATE TABLE "Author"(
  "id" INTEGER NOT NULL, 
  "f_name" TEXT NOT NULL, 
  "l_name" TEXT NOT NULL, 
  PRIMARY KEY("author_id" AUTOINCREMENT)
  );

CREATE TABLE "Book" (
	"id"	INTEGER NOT NULL,
	"book_title"	TEXT NOT NULL,
	"pub_year"	INTEGER,
	"category_id"	INTEGER,
	"language_id"	INTEGER,
	"publisher_id"	INTEGER,
	PRIMARY KEY("book_id" AUTOINCREMENT)
);

CREATE TABLE "Book_Author" (
	"book_id"	INTEGER NOT NULL,
	"author_id"	INTEGER NOT NULL,
	PRIMARY KEY("book_id","author_id")
);

CREATE TABLE "Category" (
	"id"	INTEGER NOT NULL,
	"cat_name"	TEXT NOT NULL,
	PRIMARY KEY("cat_id" AUTOINCREMENT)
);

CREATE TABLE "Language" (
	"id"	INTEGER NOT NULL,
	"language"	TEXT,
	PRIMARY KEY("lang_id" AUTOINCREMENT)
);

CREATE TABLE "Loan" (
	"id"	INTEGER NOT NULL,
	"book_id"	INTEGER NOT NULL,
	"member_id"	INTEGER NOT NULL,
	"loan_date"	TEXT NOT NULL,
	"return_date"	TEXT,
	PRIMARY KEY("loan_id" AUTOINCREMENT)
);

CREATE TABLE "Member" (
	"id"	INTEGER NOT NULL,
	"f_name"	TEXT NOT NULL,
	"l_name"	TEXT NOT NULL,
	"email"	TEXT,
	PRIMARY KEY("member_id" AUTOINCREMENT)
);

CREATE TABLE "Publisher" (
	"id"	INTEGER NOT NULL,
	"pub_name"	TEXT NOT NULL,
	PRIMARY KEY("pub_id")
);

CREATE TABLE "Shelf" (
	"id"	INTEGER NOT NULL,
	"shelf"	TEXT NOT NULL,
	PRIMARY KEY("shelf_id" AUTOINCREMENT)
);
