# DevOS-Setup
Shell scripts for automated Developer machine setup (MacOS, LInux)


# My Workstation Setup and Tools

## Multiple SSH Public Keys

```bash
ssh-keygen -t rsa -f ~/.ssh/id_rsa.home
ssh-keygen -t rsa -f ~/.ssh/id_rsa.work
```

And in `~/.ssh/config`

```
Host home
Hostname home.example.com
IdentityFile ~/.ssh/id_rsa.home
User <your home acct>

Host work
Hostname work.example.com
IdentityFile ~/.ssh/id_rsa.work
User <your work acct>
```

## Software and Systems do I use? - Current Tech Stack 

- [x] Password manager [1Password](https://1password.com/)
- [ ] To-do List Manager [Todoist](https://todoist.com/)
- [ ] Read-it-Later: [Instapaper](https://instapaper.com)
- [ ] Note taking and Reference: [Evernote](https://evernote.com/)
- [ ] Higher-level Notes and Project Managment: [Notion](https://www.notion.so)
- [ ] Reading: [Overdrive](https://www.overdrive.com/)
- [ ] Highlights: [Readwise](https://readwise.io/)
- [ ] App automation: [IFTTT](https://ifttt.com/)
- [ ] Journaling: [750 words](https://750words.com/)


