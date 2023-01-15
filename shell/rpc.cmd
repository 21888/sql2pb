@echo off
echo --------------------------------------------------------
echo -- Bat File for RPC Service
echo --------------------------------------------------------

::--------------------------------------------------------
::-- DOS Command Line Arguments
::-- --multiple
::--------------------------------------------------------
set var_server_name=order
call:Logs "Switch working directory" && cd ../
call:Logs "Working directory is %cd%"
call:Logs "Generate RPC service file"
goctl rpc protoc ./rpc/%var_server_name%.proto --go_out=./rpc/types --go-grpc_out=./rpc/types --zrpc_out=./rpc --home=../../../common/goctl-template-look --multiple
call:Logs "Generate RPC service file done"




::--------------------------------------------------------
::-- Function for DOS
::--------------------------------------------------------
exit;
:Logs - print log
echo --------------------------------------------------------
echo -- %date% %time% : %~1
echo --------------------------------------------------------
goto:eof
