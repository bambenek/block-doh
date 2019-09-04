# block-doh

This is a list of hostnames, IP addresses, and appropriate RPZ zone files to either block usage of DNS-over-HTTPS in an environment or to redirect it to a local DNS-over-HTTPS (DoH) server.

# License

CC-BY license (https://creativecommons.org/licenses/by/4.0/), legal text attached in github repo as LICENSE.txt.

# Why would I want to block DoH?

DoH provides "privacy" at the expense of security. The prominent providers do NOT filter malicious websites, domains, and IP addresses. This has the effect of creating a mechanism by which hackers bypass security policy and this has been observed in the wild. Organizations that use DNS to protect their constituents are directly harmed by DoH.

Also, as a fundamental principle, the Internet was SUPPOSED to be decentralized. As time has gone on, however, the Internet is becoming RADICALLY centralized in the hands of a few companies who control more and more. Large technology companies controlling more and more in the name of "privacy" is the exact kind of problem the Internet was supposed to prevent. And the notion that Google (one of the largest DoH providers) is interested in your DNS privacy flies in the face of their entire business model as a for-profit surveillance agency.

# What does this do?

There are two zone files, one to block DoH and one to redirect it. In the case of redirection, it will redirect DoH queries to doh-server.local which will need to be configured in your DNS resolver to point to a local DoH server.

# Why don't you include IP addresses in RPZ?

DoH providers (some of them anyway) do use IP addresses, but those would never be seen in a DNS query because it would query direct by IP addresses. To block DoH at the TCP/IP level you would need to use firewall rules to redirect those IP addresses to a local DoH resolver. A list of IP addresses is included.

# Won't this break TLS verification in DoH?

Yes. You can either install an appropriate CA in constituent browsers or use the DoH block policy where it doesn't matter because DNS resolution fails.

# What about bootstapping in DoH implementations?

Some browsers use bootstrapping to initially do the first DNS query to get the trusted IP address, thus bypassing RPZ. You can use IP firewalls to redirect that, use IP firewalls to redirect DNS queries by destination port, or let it ride. The more important use case here is to stop criminals. Malware has not been seen to fully implement all the DoH things, it just does a quick DoH query to find its command and control server. If malware can't do that because DNS resolution breaks catastrophically for them, well, bad guy doesn't own machine anymore and that's a good outcome, even if DoH properly implemented in a browser is ultimately successful.

# But I don't want to block DoH?

Then don't. I'm publishing this to help put the ball back in users' court. Block it, don't block it. It's entirely up to you.

# How do I implement this?

Clone the repo and put something like this into your appropriate named.conf file:

response-policy { zone "rpz-doh" policy given; } break-dnssec yes;
zone "rpz-doh" { type master; file "/some/directory/db.doh"; };

or

response-policy { zone "rpz-doh" policy cname doh-server.local; } break-dnssec yes;
zone "rpz-doh" { type master; file "/some/directory/db.doh"; };
