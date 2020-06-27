CREATE TABLE "Menu" (
  "id" integer UNIQUE PRIMARY KEY,
  "name" varchar,
  "sponsor" varchar,
  "event" varchar,
  "venue" varchar,
  "place" varchar,
  "physical_description" varchar,
  "occasion" varchar,
  "notes" varchar,
  "call_number" varchar,
  "keywords" varchar,
  "language" varchar,
  "date" date,
  "location" varchar,
  "location_type" varchar,
  "currency" varchar,
  "currency_symbol" varchar,
  "status" varchar,
  "page_count" integer,
  "dish_count" integer
);

CREATE TABLE "MenuPage" (
  "id" integer UNIQUE PRIMARY KEY,
  "menu_id" integer,
  "page_number" integer,
  "image_id" integer,
  "full_height" integer,
  "full_width" integer,
  "uuid" uuid
);

CREATE TABLE "MenuItem" (
  "id" integer UNIQUE PRIMARY KEY,
  "menu_page_id" integer,
  "price" double,
  "high_price" double,
  "dish_id" integer,
  "created_at" timestamp,
  "updated_at" timestamp,
  "xpos" double,
  "ypos" double
);

CREATE TABLE "Dish" (
  "id" int UNIQUE PRIMARY KEY,
  "name" varchar,
  "description" varchar,
  "menus_appeared" integer,
  "times_appeared" integer,
  "first_appeared" integer,
  "last_appeared" integer,
  "lowest_price" double,
  "highest_price" double
);

ALTER TABLE "MenuPage" ADD FOREIGN KEY ("menu_id") REFERENCES "Menu" ("id");

ALTER TABLE "MenuItem" ADD FOREIGN KEY ("menu_page_id") REFERENCES "MenuPage" ("id");

ALTER TABLE "MenuItem" ADD FOREIGN KEY ("dish_id") REFERENCES "Dish" ("id");
