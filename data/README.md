This is the relational database sql script for the Dunder Mifflin Acquisition Analysis project.

It contains 5 tables and their respective columns:


1. accounts
   - id
   - name
   - website
   - lat
   - long
   - primary_poc
   - sales_rep_id
3. orders
   - id
   - account_id
   - occurred_at
   - standard_qty
   - gloss_qty
   - poster_qty
   - total
   - standard_amt_usd
   - gloss_amt_usd
   - poster_amt_usd
   - total_amt_usd
5. region
   - id
   - name
7. sales_reps
   - id
   - name
   - region_id
9. web_events
   - id
   - account_id
   - occrred_at
   - channel
