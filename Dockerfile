FROM pihole/pihole:2026.09.0

EXPOSE 53/tcp 53/udp 80/tcp 443/tcp

COPY --from=pihole/pihole:2026.09.0 /usr/bin/pihole-FTL /usr/bin/pihole-FTL
COPY --from=pihole/pihole:2026.09.0 /etc/pihole /etc/pihole

ENTRYPOINT ["/usr/bin/pihole-FTL", "no-daemon"]
