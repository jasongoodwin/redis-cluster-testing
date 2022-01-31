ps aux | grep -ie redis-server | grep cluster |  awk '{print $2}' | xargs kill -9 
