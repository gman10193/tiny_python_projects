Help on TextIOWrapper object:

class TTeexxttIIOOWWrraappppeerr(_TextIOBase)
 |  TextIOWrapper(buffer, encoding=None, errors=None, newline=None, line_buffering=False, write_through=False)
 |  
 |  Character and line based layer over a BufferedIOBase object, buffer.
 |  
 |  encoding gives the name of the encoding that the stream will be
 |  decoded or encoded with. It defaults to locale.getpreferredencoding(False).
 |  
 |  errors determines the strictness of encoding and decoding (see
 |  help(codecs.Codec) or the documentation for codecs.register) and
 |  defaults to "strict".
 |  
 |  newline controls how line endings are handled. It can be None, '',
 |  '\n', '\r', and '\r\n'.  It works as follows:
 |  
 |  * On input, if newline is None, universal newlines mode is
 |    enabled. Lines in the input can end in '\n', '\r', or '\r\n', and
 |    these are translated into '\n' before being returned to the
 |    caller. If it is '', universal newline mode is enabled, but line
 |    endings are returned to the caller untranslated. If it has any of
 |    the other legal values, input lines are only terminated by the given
 |    string, and the line ending is returned to the caller untranslated.
 |  
 |  * On output, if newline is None, any '\n' characters written are
 |    translated to the system default line separator, os.linesep. If
 |    newline is '' or '\n', no translation takes place. If newline is any
 |    of the other legal values, any '\n' characters written are translated
 |    to the given string.
 |  
 |  If line_buffering is True, a call to flush is implied when a call to
 |  write contains a newline character.
 |  
 |  Method resolution order:
 |      TextIOWrapper
 |      _TextIOBase
 |      _IOBase
 |      builtins.object
 |  
 |  Methods defined here:
 |  
 |  ____iinniitt____(self, /, *args, **kwargs)
 |      Initialize self.  See help(type(self)) for accurate signature.
 |  
 |  ____nneexxtt____(self, /)
 |      Implement next(self).
 |  
 |  ____rreepprr____(self, /)
 |      Return repr(self).
 |  
 |  cclloossee(self, /)
 |      Flush and close the IO object.
 |      
 |      This method has no effect if the file is already closed.
 |  
 |  ddeettaacchh(self, /)
 |      Separate the underlying buffer from the TextIOBase and return it.
 |      
 |      After the underlying buffer has been detached, the TextIO is in an
 |      unusable state.
 |  
 |  ffiilleennoo(self, /)
 |      Returns underlying file descriptor if one exists.
 |      
 |      OSError is raised if the IO object does not use a file descriptor.
 |  
 |  fflluusshh(self, /)
 |      Flush write buffers, if applicable.
 |      
 |      This is not implemented for read-only and non-blocking streams.
 |  
 |  iissaattttyy(self, /)
 |      Return whether this is an 'interactive' stream.
 |      
 |      Return False if it can't be determined.
 |  
 |  rreeaadd(self, size=-1, /)
 |      Read at most n characters from stream.
 |      
 |      Read from underlying buffer until we have n characters or we hit EOF.
 |      If n is negative or omitted, read until EOF.
 |  
 |  rreeaaddaabbllee(self, /)
 |      Return whether object was opened for reading.
 |      
 |      If False, read() will raise OSError.
 |  
 |  rreeaaddlliinnee(self, size=-1, /)
 |      Read until newline or EOF.
 |      
 |      Returns an empty string if EOF is hit immediately.
 |  
 |  rreeccoonnffiigguurree(self, /, *, encoding=None, errors=None, newline=None, line_buffering=None, write_through=None)
 |      Reconfigure the text stream with new parameters.
 |      
 |      This also does an implicit stream flush.
 |  
 |  sseeeekk(self, cookie, whence=0, /)
 |      Change stream position.
 |      
 |      Change the stream position to the given byte offset. The offset is
 |      interpreted relative to the position indicated by whence.  Values
 |      for whence are:
 |      
 |      * 0 -- start of stream (the default); offset should be zero or positive
 |      * 1 -- current stream position; offset may be negative
 |      * 2 -- end of stream; offset is usually negative
 |      
 |      Return the new absolute position.
 |  
 |  sseeeekkaabbllee(self, /)
 |      Return whether object supports random access.
 |      
 |      If False, seek(), tell() and truncate() will raise OSError.
 |      This method may need to do a test seek().
 |  
 |  tteellll(self, /)
 |      Return current stream position.
 |  
 |  ttrruunnccaattee(self, pos=None, /)
 |      Truncate file to size bytes.
 |      
 |      File pointer is left unchanged.  Size defaults to the current IO
 |      position as reported by tell().  Returns the new size.
 |  
 |  wwrriittaabbllee(self, /)
 |      Return whether object was opened for writing.
 |      
 |      If False, write() will raise OSError.
 |  
 |  wwrriittee(self, text, /)
 |      Write string to stream.
 |      Returns the number of characters written (which is always equal to
 |      the length of the string).
 |  
 |  ----------------------------------------------------------------------
 |  Static methods defined here:
 |  
 |  ____nneeww____(*args, **kwargs) from builtins.type
 |      Create and return a new object.  See help(type) for accurate signature.
 |  
 |  ----------------------------------------------------------------------
 |  Data descriptors defined here:
 |  
 |  bbuuffffeerr
 |  
 |  cclloosseedd
 |  
 |  eennccooddiinngg
 |      Encoding of the text stream.
 |      
 |      Subclasses should override.
 |  
 |  eerrrroorrss
 |      The error setting of the decoder or encoder.
 |      
 |      Subclasses should override.
 |  
 |  lliinnee__bbuuffffeerriinngg
 |  
 |  nnaammee
 |  
 |  nneewwlliinneess
 |      Line endings translated so far.
 |      
 |      Only line endings translated during reading are considered.
 |      
 |      Subclasses should override.
 |  
 |  wwrriittee__tthhrroouugghh
 |  
 |  ----------------------------------------------------------------------
 |  Methods inherited from _IOBase:
 |  
 |  ____ddeell____(...)
 |  
 |  ____eenntteerr____(...)
 |  
 |  ____eexxiitt____(...)
 |  
 |  ____iitteerr____(self, /)
 |      Implement iter(self).
 |  
 |  rreeaaddlliinneess(self, hint=-1, /)
 |      Return a list of lines from the stream.
 |      
 |      hint can be specified to control the number of lines read: no more
 |      lines will be read if the total size (in bytes/characters) of all
 |      lines so far exceeds hint.
 |  
 |  wwrriitteelliinneess(self, lines, /)
 |      Write a list of lines to stream.
 |      
 |      Line separators are not added, so it is usual for each of the
 |      lines provided to have a line separator at the end.
 |  
 |  ----------------------------------------------------------------------
 |  Data descriptors inherited from _IOBase:
 |  
 |  ____ddiicctt____
