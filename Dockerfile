FROM pihole/pihole:2026.09.0

EXPOSE 53/tcp 53/udp 80/tcp 443/tcp

ENTRYPOINT ["/usr/bin/pihole-FTL", "no-daemon"]
