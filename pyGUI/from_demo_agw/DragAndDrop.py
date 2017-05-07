# intro to subject : https://wiki.wxpython.org/DragAndDrop
import  wx

#----------------------------------------------------------------------

ID_CopyBtn      = wx.NewId()
ID_PasteBtn     = wx.NewId()
ID_BitmapBtn    = wx.NewId()

#----------------------------------------------------------------------

class ClipTextPanel(wx.Panel):
    def __init__(self, parent, log):
        wx.Panel.__init__(self, parent, -1)
        self.log = log

        #self.SetFont(wx.Font(10, wx.SWISS, wx.NORMAL, wx.BOLD, False))

        sizer = wx.BoxSizer(wx.VERTICAL)
        sizer.Add(
            wx.StaticText(
                self, -1, "Copy/Paste text to/from\n"
                "this window and other apps"
                ), 
            0, wx.EXPAND|wx.ALL, 2
            )

        self.text = wx.TextCtrl(self, -1, "", style=wx.TE_MULTILINE|wx.HSCROLL)
        sizer.Add(self.text, 1, wx.EXPAND)

        hsz = wx.BoxSizer(wx.HORIZONTAL)
        hsz.Add(wx.Button(self, ID_CopyBtn, " Copy "), 1, wx.EXPAND|wx.ALL, 2)
        hsz.Add(wx.Button(self, ID_PasteBtn, " Paste "), 1, wx.EXPAND|wx.ALL, 2)
        sizer.Add(hsz, 0, wx.EXPAND)
        sizer.Add(
            wx.Button(self, ID_BitmapBtn, " Copy Bitmap "), 
            0, wx.EXPAND|wx.ALL, 2
            )

        self.Bind(wx.EVT_BUTTON, self.OnCopy, id=ID_CopyBtn)
        self.Bind(wx.EVT_BUTTON, self.OnPaste, id=ID_PasteBtn)
        self.Bind(wx.EVT_BUTTON, self.OnCopyBitmap, id=ID_BitmapBtn)

        self.SetAutoLayout(True)
        self.SetSizer(sizer)


    def OnCopy(self, evt):
        self.do = wx.TextDataObject()
        self.do.SetText(self.text.GetValue())
        if wx.TheClipboard.Open():
            wx.TheClipboard.SetData(self.do)
            wx.TheClipboard.Close()
        else:
            wx.MessageBox("Unable to open the clipboard", "Error")


    def OnPaste(self, evt):
        success = False
        do = wx.TextDataObject()
        if wx.TheClipboard.Open():
            success = wx.TheClipboard.GetData(do)
            wx.TheClipboard.Close()

        if success:
            self.text.SetValue(do.GetText())
        else:
            wx.MessageBox(
                "There is no data in the clipboard in the required format",
                "Error"
                )

    def OnCopyBitmap(self, evt):
        dlg = wx.FileDialog(self, "Choose a bitmap to copy", wildcard="*.bmp")

        if dlg.ShowModal() == wx.ID_OK:
            bmp = wx.Bitmap(dlg.GetPath(), wx.BITMAP_TYPE_BMP)
            bmpdo = wx.BitmapDataObject(bmp)
            if wx.TheClipboard.Open():
                wx.TheClipboard.SetData(bmpdo)
                wx.TheClipboard.Close()

                wx.MessageBox(
                    "The bitmap is now in the Clipboard.  Switch to a graphics\n"
                    "editor and try pasting it in..."
                    )
            else:
                wx.MessageBox(
                    "There is no data in the clipboard in the required format",
                    "Error"
                    )

        dlg.Destroy()

#----------------------------------------------------------------------

class OtherDropTarget(wx.PyDropTarget):
    def __init__(self, window, log):
        wx.PyDropTarget.__init__(self)
        self.window = window
        self.log = log

        self.doComposite = wx.DataObjectComposite()  # the dataobject that gets filled with the appropriate data
        self.filedo = wx.FileDataObject()
        self.textdo = wx.TextDataObject()
        self.bmpdo  = wx.BitmapDataObject()
        self.urldo  = wx.URLDataObject()
        # self.thunderbirdDropData = wx.CustomDataObject('text/x-moz-message')
        # self.doComposite.Add(self.thunderbirdDropData)
        self.doComposite.Add(self.filedo)
        self.doComposite.Add(self.textdo)
        self.doComposite.Add(self.bmpdo)
        # self.doComposite.Add(self.urldo)
        self.SetDataObject(self.doComposite)

    def OnEnter(self, x, y, d):
        self.log.WriteText("OnEnter: %d, %d, %d\n" % (x, y, d))
        return wx.DragCopy

    # def OnDragOver(self, x, y, d):
    #    self.log.WriteText("OnDragOver: %d, %d, %d\n" % (x, y, d))
    #    return wx.DragCopy

    def OnLeave(self):
        self.log.WriteText("OnLeave\n")

    def OnDrop(self, x, y):
        self.log.WriteText("OnDrop: %d %d\n" % (x, y))
        return True

    def OnData(self, x, y, result):
        """
        Handles drag/dropping files/text or a bitmap
        """
        self.log.WriteText("OnData: %d, %d, %d\n" % (x, y, result))

        self.window.SetInsertionPointEnd()
        self.window.WriteText("OnData: %d, %d, %d\n" % (x, y, result))

        if self.GetData():
            # formatType, formatId = self.GetReceivedFormatAndId()
            formatType = self.GetReceivedFormatAndId()
            # if formatId == 'text/x-moz-message':
            #     return self.OnThunderbirdDrop()
            if formatType in (wx.DF_TEXT, wx.DF_UNICODETEXT):
                return self.OnTextDrop()
            elif formatType == wx.DF_FILENAME:
                return self.OnFileDrop()
            elif formatType == wx.DF_BITMAP:
                return self.OnBMPDrop()
            else:
                return self.OnUrlDrop()

        return result  # you must return this


    def GetReceivedFormatAndId(self):
        format     = self.doComposite.GetReceivedFormat()
        formatType = format.GetType()
        # try:
        #     formatId = format.GetId()  # May throw exception on unknown formats
        # except:
        #     formatId = None
        # return formatType, formatId
        return formatType

    def OnThunderbirdDrop(self):
        # self.textCtrl.AppendText(self.thunderbirdDropData.GetData().decode('utf-16'))
        # self.textCtrl.AppendText('\n')
        return wx.DragCopy

    def OnUrlDrop(self):
        url = self.data.GetURL()
        self.window.AppendText(url + "\n")
        return wx.DragLink

    def OnTextDrop(self):
        print "OnTextDrop:"
        text = self.textdo.GetText()
        # self.textCtrl.AppendText(self.textDropData.GetText() + '\n')
        print text
        self.window.WriteText(text)
        return wx.DragCopy

    def OnFileDrop(self):
        print "OnFileDrop:"
        for name in self.filedo.GetFilenames():
            print name
            self.log.WriteText("%s\n" % name)
            self.window.WriteText("%s\n" % name)

        # for filename in self.fileDropData.GetFilenames():
        #     self.textCtrl.AppendText(filename + '\n')
        return wx.DragCopy

    def OnBMPFDrop(self):
        print "OnBMPDrop:"
        bmp = self.bmpdo.GetBitmap()
        return wx.DragCopy

#----------------------------------------------------------------------


class MyFileDropTarget(wx.FileDropTarget):
    def __init__(self, window, log):
        wx.FileDropTarget.__init__(self)
        self.window = window
        self.log = log

    def OnDropFiles(self, x, y, filenames):
        self.window.SetInsertionPointEnd()
        self.window.WriteText("\n%d file(s) dropped at %d,%d:\n" %
                              (len(filenames), x, y))

        for file in filenames:
            self.window.WriteText(file + '\n')


class MyTextDropTarget(wx.TextDropTarget):
    def __init__(self, window, log):
        wx.TextDropTarget.__init__(self)
        self.window = window
        self.log = log

    def OnDropText(self, x, y, text):
        self.window.WriteText("(%d, %d)\n%s\n" % (x, y, text))

    def OnDragOver(self, x, y, d):
        return wx.DragCopy


class FileDropPanel(wx.Panel):
    def __init__(self, parent, log):
        wx.Panel.__init__(self, parent, -1)

        #self.SetFont(wx.Font(10, wx.SWISS, wx.NORMAL, wx.BOLD, False))

        sizer = wx.BoxSizer(wx.VERTICAL)
        ''''''
        # sizer.Add(
        #     wx.StaticText(self, -1, " \nDrag some files here:"),
        #     0, wx.EXPAND|wx.ALL, 2
        #     )
        #
        # self.text = wx.TextCtrl(
        #                 self, -1, "",
        #                 style = wx.TE_MULTILINE|wx.HSCROLL|wx.TE_READONLY
        #                 )
        #
        # dt = MyFileDropTarget(self, log)
        # self.text.SetDropTarget(dt)
        # sizer.Add(self.text, 1, wx.EXPAND)
        ''''''
        # sizer.Add(
        #     wx.StaticText(self, -1, " \nDrag some text here:"),
        #     0, wx.EXPAND|wx.ALL, 2
        #     )
        #
        # self.text2 = wx.TextCtrl(
        #                 self, -1, "",
        #                 style = wx.TE_MULTILINE|wx.HSCROLL|wx.TE_READONLY
        #                 )
        #
        # dt = MyTextDropTarget(self.text2, log)
        # self.text2.SetDropTarget(dt)
        # sizer.Add(self.text2, 1, wx.EXPAND)
        ''''''  #ran section addition
        # sizer.Add(
        #     wx.StaticText(self, -1, " \nother Drag&Drop here:"),
        #     0, wx.EXPAND|wx.ALL, 2
        #     )

        self.text3 = wx.TextCtrl(
                        self, -1, "",
                        style = wx.TE_MULTILINE|wx.HSCROLL|wx.TE_READONLY
                        )

        dt = OtherDropTarget(self.text3, log)
        self.text3.SetDropTarget(dt)
        sizer.Add(self.text3, 1, wx.EXPAND)
        ''''''
        self.SetAutoLayout(True)
        self.SetSizer(sizer)


    def WriteText(self, text):
        self.text.WriteText(text)

    def SetInsertionPointEnd(self):
        self.text.SetInsertionPointEnd()


#----------------------------------------------------------------------
#----------------------------------------------------------------------

class TestPanel(wx.Panel):
    def __init__(self, parent, log):
        wx.Panel.__init__(self, parent, -1)

        self.SetAutoLayout(True)
        outsideSizer = wx.BoxSizer(wx.VERTICAL)

        # msg = "Clipboard / Drag-And-Drop"
        # text = wx.StaticText(self, -1, "", style=wx.ALIGN_CENTRE)
        # text.SetFont(wx.Font(24, wx.SWISS, wx.NORMAL, wx.BOLD, False))
        # text.SetLabel(msg)
        #
        # w,h = text.GetTextExtent(msg)
        # text.SetSize(wx.Size(w,h+1))
        # text.SetForegroundColour(wx.BLUE)
        # outsideSizer.Add(text, 0, wx.EXPAND|wx.ALL, 5)
        # outsideSizer.Add(wx.StaticLine(self, -1), 0, wx.EXPAND)

        inSizer = wx.BoxSizer(wx.HORIZONTAL)
        # inSizer.Add(ClipTextPanel(self, log), 1, wx.EXPAND)
        inSizer.Add(FileDropPanel(self, log), 1, wx.EXPAND)

        outsideSizer.Add(inSizer, 1, wx.EXPAND)
        self.SetSizer(outsideSizer)


#----------------------------------------------------------------------

def runTest(frame, nb, log):
    win = TestPanel(nb, log)
    return win

#----------------------------------------------------------------------


overview = """\
<html>
<body>
This demo shows some examples of data transfer through clipboard or
drag and drop. In wxWindows, these two ways to transfer data (either
between different applications or inside one and the same) are very
similar which allows to implement both of them using almost the same
code - or, in other words, if you implement drag and drop support for
your application, you get clipboard support for free and vice versa.
<p>
At the heart of both clipboard and drag and drop operations lies the
wxDataObject class. The objects of this class (or, to be precise,
classes derived from it) represent the data which is being carried by
the mouse during drag and drop operation or copied to or pasted from
the clipboard. wxDataObject is a "smart" piece of data because it
knows which formats it supports (see GetFormatCount and GetAllFormats)
and knows how to render itself in any of them (see GetDataHere). It
can also receive its value from the outside in a format it supports if
it implements the SetData method. Please see the documentation of this
class for more details.
<p>
Both clipboard and drag and drop operations have two sides: the source
and target, the data provider and the data receiver. These which may
be in the same application and even the same window when, for example,
you drag some text from one position to another in a word
processor. Let us describe what each of them should do.
</body>
</html>
"""


if __name__ == '__main__':
    import sys,os
    import run
    run.main(['', os.path.basename(sys.argv[0])] + sys.argv[1:])

