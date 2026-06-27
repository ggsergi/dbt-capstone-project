# AirStats Silver Layer — Overview

The silver layer consists of three interconnected tables that together provide a clean and enriched view of global airport data.

`silver_airports` is the central table, containing one row per airport identified by `airport_ident`. It acts as the parent table for the other two.

`silver_runways` contains the physical runway data for each airport. Each runway belongs to one airport via `airport_ident`, meaning one airport can have multiple runways.

`silver_airport_comments` stores user-generated comments about airports. Each comment references an airport via `airport_ident`, meaning one airport can have multiple comments over time. Comments are loaded incrementally using `comment_id` to identify new records.

The three tables connect through `airport_ident` — starting from `silver_airports` as the source of truth, with `silver_runways` and `silver_airport_comments` as its dependents.