;
; BIND zone for DoH providers
;
$TTL    604800
@       IN      SOA     localhost. root.localhost. (
                     1562067624         ; Serial
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
dns.dns-over-https.com    CNAME   .
doh.securedns.eu    CNAME   .
dns.rubyfish.cn    CNAME   .
doh.dnswarden.com    CNAME   .
doh.captnemo.in    CNAME   .
doh.tiar.app    CNAME   .
commons.host  CNAME .
dns.aaflolo.me  CNAME .
doh.appliedprivacy.net  CNAME .
doh.dns.sb  CNAME .
rdns.faelix.net CNAME .
doh.dns.sb.cdn.cloudflare.net CNAME .
dns.adguard.com CNAME .
dns-family.adguard.com CNAME .
doh-ch.blahdns.com CNAME .
doh-jp.blahdns.com CNAME .
doh-de.blahdns.com CNAME .
dns.aaflalo.me CNAME .
dns-nyc.aaflalo.me CNAME .
dns-gcp.aaflalo.me CNAME .
tiar.app CNAME .
doh.netweaver.uk CNAME .
doh.armadillodns.net CNAME .
doh.li CNAME .
faelix.net CNAME .
doh.dns.sb CNAME .
doh.appliedprivacy.net CNAME .
commons.host CNAME .
dns.nextdns.io CNAME .
dns.quad9.net CNAME .
dns.brahma.world CNAME .
dnscrypt.nl CNAME .
dnscrypt.eu CNAME .
dnscrypt.uk CNAME .
encrypt.town CNAME .
233py.com CNAME .
ad.jp CNAME .
ipredator.se CNAME .
oszx.co CNAME .
seby.io CNAME .
cruisemaniac.com CNAME .
qualityology.com CNAME .
rubyfish.cn CNAME .
dnscrypt.info CNAME .
dnsforfamily.com CNAME .
