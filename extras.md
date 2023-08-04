Leave SSH command running after disconnecting
=============================================

```
ssh remote-computer
nohup ./long-running-command &
exit
```

Infinite number of email-adresses from one Gmail address
========================================================

Gmail addresses doesn't care about periods,
so emails to herman@gmail.com and h.e.r.m.a.n@gmail.com will arrive to the same recipient's mailbox.
Most sites where you register your email address *does* care, however.
This trick is particularly useful for web stores where you get a one-time promotional code after registering,
without needing to use a 10 min mail thing.
