;
; BIND zone for DoH providers
;
$TTL    604800
@       IN      SOA     localhost. root.localhost. (
                     1562067622         ; Serial
                         604800         ; Refresh
                          86400         ; Retry
                        2419200         ; Expire
                         604800 )       ; Negative Cache TTL
        NS      localhost. 
;
dns.google    CNAME   .
cloudflare-dns.com    CNAME   .
dns9.quad9.net    CNAME   .
dns10.quad9.net    CNAME   .
doh.cleanbrowsing.org    CNAME   .
dns.dnsoverhttps.net    CNAME   .
doh.crypto.sx    CNAME   .
doh.powerdns.org    CNAME   .
doh-jp.blahdns.com    CNAME   .
dns.dns-over-https.com    CNAME   .
doh.securedns.eu    CNAME   .
dns.rubyfish.cn    CNAME   .
doh.dnswarden.com    CNAME   .
doh.captnemo.in    CNAME   .
doh.tiar.app    CNAME   .
