fun main _ =
  let
    val socket = PostgresClient.connect ()
  in
    PostgresClient.startup socket;
    PostgresClient.parser socket;
    PostgresClient.execute socket "SELECT 'Hello :)' AS Message";
    PostgresClient.parser socket;
    Socket.close socket
  end
