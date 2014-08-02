import qualified Data.Map as M
import qualified Text.Show as Show
import qualified Data.ByteString.Lazy as L
import Network.HTTP.Conduit
import Control.Monad.IO.Class

type Query = M.Map String [String]

main = search "http://localhost:9200/" M.empty >>= L.putStr

search :: MonadIO m => String -> Query -> m L.ByteString
search uri query = simpleHttp uri
