FROM node:18

ARG DEBIAN_FRONTEND=noninteractive

# Set the working directory to the user's home directory
WORKDIR $HOME/app

# Copy the current directory contents into the container at $HOME/app setting the owner to the user
COPY . $HOME/app

RUN npm config set registry https://registry.npmmirror.com --global
RUN npm install


EXPOSE 8000

CMD [ "npm", "run", "dev" ]
