share
  [mkPersist sqlSettings, mkMigrate "migrateAll"]
  [persistLowerCase|


Person
  uuid Text

  firstName Text
  lastName Text

  age Int

  postCode Int

  password Text

  UniquePersonUUID uuid
  UniquePersonPassword password

  deriving Show
  deriving Eq
  deriving Generic


Purchase
  person Text -- Person UUID
  item Text -- Item UUID

  UniquePurchase person item

  deriving Show
  deriving Eq
  deriving Generic


Item
  uuid Text
  name Text

  UniqueItemUUID uuid
  UniqueItemName name

  deriving Show
  deriving Eq
  deriving Generic
|]
