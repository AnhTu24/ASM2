<?php

namespace Ductong\XuongOop\Commons;

use Doctrine\DBAL\Connection;
use Doctrine\DBAL\DriverManager;
use Doctrine\DBAL\Query\QueryBuilder;

class Model
{
    protected Connection|null $conn;
    protected QueryBuilder $queryBuilder;
    protected string $tableName;

    public function __construct()
    {
        $connectionParams = [
            'dbname'    => $_ENV['DB_NAME'],
            'user'      => $_ENV['DB_USERNAME'],
            'password'  => $_ENV['DB_PASSWORD'],
            'host'      => $_ENV['DB_HOST'],
            'port'      => $_ENV['DB_PORT'],
            'driver'    => $_ENV['DB_DRIVER'],
        ];

        $this->conn = DriverManager::getConnection($connectionParams);

        $this->queryBuilder = $this->conn->createQueryBuilder();
    }

    // CRUD
    public function all()
    {
        return $this->queryBuilder
            ->select('*')
            ->from($this->tableName)
            ->orderBy('id', 'desc')
            ->fetchAllAssociative();
    }

    public function count()
    {
        return $this->queryBuilder
            ->select("COUNT(*) as $this->tableName")
            ->from($this->tableName)
            ->fetchOne();
    }

    public function countProductByCategory()
    {
        return $this->queryBuilder
            ->select('c.name AS category_name, COUNT(p.id) AS product_count')
            ->from('categories', 'c')
            ->leftJoin('c', $this->tableName, 'p', 'c.id = p.category_id') // Sử dụng leftJoin
            ->groupBy('c.id')
            ->fetchAllAssociative();
    }

    public function paginate($page = 1, $perPage = 5)
    {
        $queryBuilder = clone $this->queryBuilder;
        $totalCount = $this->count(); 
        $totalPage = ceil($totalCount / $perPage);
        $offset = $perPage * ($page - 1);

        $data = $queryBuilder
            ->select('*')
            ->from($this->tableName)
            ->setFirstResult($offset)
            ->setMaxResults($perPage)
            ->orderBy('id', 'desc')
            ->fetchAllAssociative();

        return [
            'data' => $data,
            'totalPage' => $totalPage,
            'currentPage' => $page,
            'totalRecords' => $totalCount
        ];
    }

    public function findByID($id)
    {
        return $this->queryBuilder
            ->select('*')
            ->from($this->tableName)
            ->where('id = ?')
            ->setParameter(0, $id)
            ->fetchAssociative();
    }

    public function insert(array $data)
    {
        if (!empty($data)) {
            $query = $this->queryBuilder->insert($this->tableName);

            $index = 0;
            foreach ($data as $key => $value) {
                $query->setValue($key, '?')->setParameter($index, $value);

                ++$index;
            }

            $query->executeQuery();

            return true;
        }

        return false;
    }

    public function update($id, array $data)
    {
        if (!empty($data)) {
            $query = $this->queryBuilder->update($this->tableName);

            $index = 0;
            foreach ($data as $key => $value) {
                $query->set($key, '?')->setParameter($index, $value);

                ++$index;
            }

            $query->where('id = ?')
                ->setParameter(count($data), $id)
                ->executeQuery();

            return true;
        }

        return false;
    }

    public function delete($id)
    {
        return $this->queryBuilder
            ->delete($this->tableName)
            ->where('id = ?')
            ->setParameter(0, $id)
            ->executeQuery();
    }
    
    public function searchByNamePaginate($name, $page = 1, $perPage = 5)
    {
        $queryBuilder = clone $this->queryBuilder;
        
        $totalCount = $queryBuilder
            ->select("COUNT(*)")
            ->from($this->tableName)
            ->where('name LIKE ?')
            ->setParameter(0, '%' . $name . '%')
            ->fetchOne();
        
        $totalPage = ceil($totalCount / $perPage);
        $offset = $perPage * ($page - 1);

        $data = $queryBuilder
            ->select('*')
            ->from($this->tableName)
            ->where('name LIKE ?')
            ->setParameter(0, '%' . $name . '%')
            ->setFirstResult($offset)
            ->setMaxResults($perPage)
            ->orderBy('id', 'desc')
            ->fetchAllAssociative();

        return [
            'data' => $data,
            'totalPage' => $totalPage,
            'currentPage' => $page,
            'totalRecords' => $totalCount
        ];
    }

    
    
}
