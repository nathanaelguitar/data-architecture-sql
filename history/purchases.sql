-- Every query I ran against this database in SQLiteStudio, in the order I ran them.
-- All hand-written. Includes the failed attempts and repeats.

-- 1. 2025-06-07 15:09, rows returned: 500
Select *
from Invoice;

-- 2. 2025-06-07 15:13, rows returned: 3
Select B.ProductId as bought_with_PID_17
from Invoice A, Invoice B
where A.InvoiceId = B.InvoiceID AND
      A.ProductId <> B.ProductId AND
      A.ProductID = 17;

-- 3. 2025-06-07 15:15, rows returned: 3
Select *
from Invoice A, Invoice B
where A.InvoiceId = B.InvoiceID AND
      A.ProductId <> B.ProductId AND
      A.ProductID = 17;

-- 4. 2025-06-07 15:20, rows returned: 0
Select *
from InvoiceLine A, InvoiceLine B
where A.InvoiceId = B.InvoiceId;

-- 5. 2025-06-07 21:52, rows returned: 8
Select InvoiceId
from Invoice
where ProductId = 17;

-- 6. 2025-06-07 21:53, rows returned: 0
Select ProductId
from Invoice
where InvoiceId IN
    (
    Select InvoiceId
from Invoice
where ProductId = 17;

-- 7. 2025-06-07 21:55, rows returned: 3
Select ProductId
from Invoice
where InvoiceId IN
    (
    Select InvoiceId
from Invoice
where ProductId = 17
    ) AND
    ProductId <> 17;

