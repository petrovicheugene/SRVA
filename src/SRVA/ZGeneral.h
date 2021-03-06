//===========================================================
#ifndef ZGENERAL_H
#define ZGENERAL_H
//===========================================================
#include <QString>
#include <QIcon>
#include <QMessageBox>

//==========================================================
extern const QString glAppExeBaseName; /*!< Exe file name without version */
extern const QString glAppProduct; /*!< Application representation name that appears in window title*/
extern const QString glAppCompany; /*!< Application company name like TechnoAnalyt Ltd.*/
extern const QString glAppCopyright; /*!< Copyright string */
extern const QString glAppCompanyURL; /*!< Company URL */

extern const QString glDefaultDBSuffixString;
extern const QString glDefaultChemElementString; /*!< TODO: describe */
extern const QString glAppSettingsKeyName; /*!< TODO: describe */
extern const QString glAppGeometryKeyName; /*!< TODO: describe */
extern const QString glAppStateKeyName; /*!< TODO: describe */

// Icons
namespace NS_Icons
{
extern const QString glIconSettings; /*!< TODO: describe */
extern const QString glIconExitApp; /*!< TODO: describe */
extern const QString glIconAbout; /*!< TODO: describe */
extern const QString glIconHelp; /*!< TODO: describe */
extern const QString glIconQt ;

extern const QString glIconSidebarLeftOpen;
extern const QString glIconSidebarLeftClose;
extern const QString glIconSidebarRightOpen;
extern const QString glIconSidebarRightClose;

extern const QString glIconAxisToEnergy;
extern const QString glIconShowGrid;
extern const QString glIconVerticalIncrease;
extern const QString glIconVerticalDecrease;
extern const QString glIconHorizontalIncrease;
extern const QString glIconHorizontalDecrease;
extern const QString glIconFitInRect;
}

// Common non translatable strings
// object Names
namespace NS_ObjectNames
{
extern const QString glObjectNameMenuFile; /*!< TODO: describe */
extern const QString glObjectNameMenuEdit; /*!< TODO: describe */
extern const QString glObjectNameMenuView; /*!< TODO: describe */
extern const QString glObjectNameMenuActions; /*!< TODO: describe */
extern const QString glObjectNameMenuHelp; /*!< TODO: describe */
}
// Common strings
namespace NS_CommonStrings
{
extern const QString glSettings; /*!< TODO: describe */
extern const QString glSettingsToolTip; /*!< TODO: describe */

extern const QString glExit; /*!< TODO: describe */
extern const QString glExitToolTip; /*!< TODO: describe */

extern const QString glAbout; /*!< TODO: describe */
extern const QString glAboutToolTip; /*!< TODO: describe */

extern const QString glHelp; /*!< TODO: describe */
extern const QString glHelpToolTip; /*!< TODO: describe */

extern const QString glError; /*!< TODO: describe */
extern const QString glWarning; /*!< TODO: describe */
extern const QString glCommon; /*!< TODO: describe */
extern const QString glColor; /*!< TODO: describe */
extern const QString glSelectColor; /*!< TODO: describe */
}

// Menu strings
namespace NS_Menus
{
extern const QString glMenuFile; /*!< TODO: describe */
extern const QString glMenuEdit; /*!< TODO: describe */
extern const QString glMenuView; /*!< TODO: describe */
extern const QString glMenuActions; /*!< TODO: describe */
extern const QString glMenuHelp; /*!< TODO: describe */
}
// button strings
namespace NS_Buttons
{
extern const QString glButtonOk; /*!< TODO: describe */
extern const QString glButtonApply; /*!< TODO: describe */
extern const QString glButtonCancel; /*!< TODO: describe */
extern const QString glButtonBrowse; /*!< TODO: describe */
extern const QString glButtonNew; /*!< TODO: describe */

}
// window captions
namespace NS_WindowCaptions
{
extern const QString glOpenFile; /*!< TODO: describe */
extern const QString glSelectColor; /*!< TODO: describe */

}
extern const int glMaxGainFactor;
extern const int glSpectrumDataType;

namespace NS_DataRole
{
extern const int PathRole;
extern const int CommentRole;
extern const int DataTypeRole;
extern const int VisibleRole;
extern const int AbstractSpectrumRole;
}

// FUNCS
QString glCreateCaption(const QString& simpleText);
//===========================================================
#endif // ZGENERAL_H
