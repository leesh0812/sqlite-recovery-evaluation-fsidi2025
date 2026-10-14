SQLite Recovery Evaluation — FSIDI 2025
======================================

Additional SQLite forensic test cases accompanying:

Seonghyeon Lee, Sooyoung Park, Insoo Lee, and Jongmoo Choi.
"A comprehensive analysis and evaluation of SQLite deleted Record recovery
techniques: A survey."
Forensic Science International: Digital Investigation, 55 (2025), 302031.
https://doi.org/10.1016/j.fsidi.2025.302031

This repository contains only the additional test cases. It does not
replace or redistribute the complete original SQLite Forensic Corpus.

The WAL cases were regenerated using the scenario described in the paper.
The generation and snapshot procedures used here are documented below.

Contents
--------

README.txt
0F/0F-01.sql
0F/0F-01.db
10/10-01.sql
10/10-01.db
10/10-01.db-wal
10/10-02.sql
10/10-02.db-wal

0F-01: B-tree rebalancing
------------------------

1. Create an empty table named free and a table named Students.
2. Insert 20 records into Students, each including a 350-byte RANDOMBLOB.
3. Drop the empty table.
4. Delete 10 records from Students.

Settings:
- Page size: 4096 bytes
- Encoding: UTF-8
- secure_delete: OFF

Deleted StudentIDs: 1-7 and 18-20.
Remaining StudentIDs: 8-17.

This case examines deleted-record recovery and false positives associated
with B-tree rebalancing. The supplied DB is retained from existing
experiment files.

RANDOMBLOB generates different values on each run, so executing the SQL
again will not produce a byte-identical DB.

10-01 and 10-02: WAL recovery
---------------------------

1. Create Students.
2. Insert 20 records.
3. Delete all 20 records using DELETE FROM Students;
4. Drop Students.
5. Create Students_2 with the same column definitions.
6. Insert 20 new records.

Settings:
- SQLite version used for generation: 3.31.1
- Page size: 4096 bytes
- Encoding: UTF-8
- Journal mode: WAL
- secure_delete: ON
- wal_autocheckpoint: 0

Each SQL statement is committed separately.

Deleted records:
- StudentID: 1-20
- Name: Student1-Student20

Current records:
- StudentID: 21-40
- Name: Student31-Student50

Complete field values are provided in the SQL files.

10-01 includes the main DB and its WAL.
10-02 includes only the WAL, representing the absence of the main DB.
The two supplied WAL files contain identical bytes.

WAL snapshot procedure
----------------------

1. Start with a new database and execute the case SQL.
2. Run PRAGMA wal_checkpoint(FULL); and confirm successful completion.
3. Keep the connection open and perform no further writes.
4. Copy the main DB and WAL for 10-01.
5. Copy the same WAL without the main DB for 10-02.
6. Close the working connection after copying.

Do not perform a RESTART or TRUNCATE checkpoint before copying.
Shared-memory files (.db-shm) are not included.

The main DB contains the final table, while the WAL retains earlier page
versions. Running the SQL and then closing SQLite does not by itself
preserve this snapshot; the copying procedure above is also required.

Usage and comparison
--------------------

For 10-01, keep 10-01.db and 10-01.db-wal in the same directory with their
names unchanged. For 10-02, supply only 10-02.db-wal to a tool supporting
WAL-only input.

Opening the DB with an ordinary SQLite application may checkpoint or
remove its WAL.

Count distinct recovered deleted records rather than repeated appearances
across WAL frames.

Recovery results may vary with tool versions and execution settings.

License
-------

Original contributions in this repository are licensed as follows:

- SQL scripts and source code: MIT License.
  https://opensource.org/license/mit
- Database files (.db), WAL files (.db-wal), and documentation:
  Creative Commons Attribution 4.0 International (CC BY 4.0).
  https://creativecommons.org/licenses/by/4.0/

The MIT License applies to SQL scripts and source code only.
See LICENSE and LICENSE-DATA for the applicable license notices.
