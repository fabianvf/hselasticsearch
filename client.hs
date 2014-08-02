import qualified Data.Map as M
import qualified Text.Show as Show
import qualified Data.ByteString.Lazy as L
import Network.HTTP.Conduit
import Control.Monad.IO.Class

type Query = M.Map String [String]

main = simpleHttp "http://localhost:9200" >>= L.putStr
