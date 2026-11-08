-- Database: Purchases
-- Queries written in SQLiteStudio (SQLite). Each is the final working version of a query I iterated on.

-- 1. 2025-06-07
Select *
from Invoice A, Invoice B
where A.InvoiceId = B.InvoiceID AND
      A.ProductId <> B.ProductId AND
      A.ProductID = 17;

-- 2. 2025-06-07
Select ProductId
from Invoice
where InvoiceId IN
    (
    Select InvoiceId
from Invoice
where ProductId = 17
    ) AND
    ProductId <> 17;

