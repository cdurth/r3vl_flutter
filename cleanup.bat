for /r %%F in (*) do @if %%~zF==0 @del "%%F"
for /r %%I in (*.inject.summary) do @del "%%I"