```
% pandoc -f latex -t plain -M lang=en
\figurename 2
^D
Figure 2
```

```
% pandoc -f latex -t plain -M lang=de-DE
\figurename 2
^D
Abbildung 2
```

```
% pandoc -f latex -t plain -M lang=en
\setmainlanguage{german}
\figurename 2
^D
Abbildung 2
```