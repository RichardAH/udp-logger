const log_ctx =
{
  ip : '127.0.0.1',
  port: 12000,
  sock : require('dgram').createSocket('udp4')
};

const log_msg = (msg) =>
{
    log_ctx.sock.send(msg,0, msg.length, log_ctx.port, log_ctx.ip);
};


log_msg("testing 1!\n");
log_msg("testing 2!\n");
log_msg("testing 3!\n");
log_msg("testing 4!\n");

setTimeout(()=>{process.exit(0);}, 1000);
