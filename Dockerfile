FROM fusuf/whatsasena:latest

RUN git clone https://github.com/agentnox/newwhbot /root/newwhbot
WORKDIR /root/newwhbot/
ENV TZ=Asia/Kolkata
RUN npm install supervisor -g
RUN yarn install --no-audit

CMD ["node", "bot.js"]
