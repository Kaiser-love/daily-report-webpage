#!/bin/bash
cd /root/clawd/daily-report-webpage
# Update report date
sed -i "s/<p class=\"report-date\">.*<\/p>/<p class=\"report-date\">$(date +%Y年%m月%d日)<\/p>/" index.html
# Commit and push updates
git add index.html
git commit -m "Update daily report: $(date +%Y-%m-%d)"
git push origin main