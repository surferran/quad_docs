#show tif files
# possible refs:
# https://blog.philippklaus.de/2011/08/handle-16bit-tiff-images-in-python
# https://matplotlib.org/users/image_tutorial.html

import wx
import matplotlib.pyplot as plt
import matplotlib.image as mpimg
from matplotlib.backends.backend_wxagg import \
        FigureCanvasWxAgg as FigCanvas, \
        NavigationToolbar2WxAgg as NavigationToolbar

class ShowTifInPath(wx.Panel):

    def __init__(self,parent):

        wx.Panel.__init__(self, parent)

        self.fig = plt.figure()
        self.canvas = FigCanvas(self, -1, self.fig)

        self.lastFileName = ''
        self.filesPath = ''

        self.canvas.Bind(wx.EVT_KEY_DOWN    , self.OnKeyPress)
        self.canvas.Bind(wx.EVT_KEY_UP      , self.OnKeyPress)
        self.canvas.Bind(wx.EVT_ENTER_WINDOW, self.ChangeCursor)


    def ChangeCursor(self, event):
        self.canvas.SetCursor(wx.StockCursor(wx.CURSOR_BULLSEYE))

    def showTif(self,tifFullName):
        img = mpimg.imread(tiff_file)
        imgplot = plt.imshow(img)
        plt.colorbar()
        # plt.axis('off')
        self.vbox = wx.BoxSizer(wx.VERTICAL)
        self.vbox.Add(self.canvas, 1, wx.LEFT | wx.TOP | wx.GROW)
        self.toolbar = NavigationToolbar(self.canvas)
        self.vbox.Add(self.toolbar, 0, wx.EXPAND)
        self.SetSizer(self.vbox)
        self.vbox.Fit(self)
        return imgplot

    def OnKeyPress(self, event):
        print "onKey"
        pressedKey = event.GetKeyCode()
        if (pressedKey==wx.WXK_LEFT) | (pressedKey==wx.WXK_DOWN):
            print"left / down key"
        elif (pressedKey==wx.WXK_RIGHT) | (pressedKey==wx.WXK_UP):
            print "right / up key"
        elif (pressedKey == wx.WXK_NUMPAD_ADD) :
            print "+ key"
        elif (pressedKey == wx.WXK_NUMPAD_SUBTRACT):
            print "- key"

        return pressedKey

if __name__=='__main__':
    tiff_file = './tif/CCITT_2.tif'


    app     = wx.PySimpleApp()
    fr      = wx.Frame(None, title='main test')
    panel   = ShowTifInPath(fr)
    # panel.draw()
    panel.showTif(tiff_file)
    fr.Show()
    app.MainLoop()

    #from PIL import Image
    #im = Image.open(tiff_file)
    ##im.show()
    #
    #import matplotlib.pyplot as plt
    #I = plt.imread(tiff_file)   #ndarray type
    #plt.show()

