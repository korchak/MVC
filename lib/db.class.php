<?php

class DB
{
    protected $connection;

    public function __construct($host, $user, $password, $db_name)
    {
        $this->connection = new mysqli($host, $user, $password, $db_name);

        if ($this->connection->connect_error) {
            throw new Exception('Could not connect to DB');
        }
    }

    public function query($sql)
    {
        if (!$this->connection) {
            return false;
        }

        $result = $this->connection->query($sql);

        if ($this->connection->error) {
            throw new Exception($this->connection->error);
        }

        if (is_bool($result)) {
            return $result;
        }

        $data = $result->fetch_all(MYSQLI_ASSOC);

        return $data;
    }

    public function escape($str)
    {
        return $this->connection->escape_string($str);
    }

}