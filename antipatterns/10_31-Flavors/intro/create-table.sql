CREATE TABLE PersonalContacts (
  -- 他の列...
  aalutation VARCHAR(4)
    CHECK (salutation IN('Mr.', 'Mrs.', 'Ms.', 'Dr.', 'Rev.')),
);
