//
//	Copyright  Nemetschek Vectorworks, Inc.
//	Use of this file is governed by the Nemetschek Vectorworks SDK License Agreement
//	http://developer.vectorworks.net/index.php?title=Vectorworks_SDK_License
//

#pragma once
#include <unordered_map>

namespace VWFC
{
	using namespace Tools;
	
	namespace VWObjects
	{
		class VWRecordObj : public VWObject
		{
		public:
								VWRecordObj(MCObjectHandle hRecordHandle, ERecordIFCWrapMode wrapMode=ERecordIFCWrapMode::None);
								VWRecordObj(MCObjectHandle hFormat, MCObjectHandle hObject, bool bUseExistingRecord=true, ERecordIFCWrapMode wrapMode=ERecordIFCWrapMode::Auto);
								VWRecordObj(const VWRecordObj& src);
			virtual				~VWRecordObj();

			VWRecordObj&		operator=(const VWRecordObj& src);
	
		public:
			TXString			GetRecordName() const;
			TXString			GetRecordLocalizedName() const;
			bool				SetRecordLocalizedName(const TXString& name);
			bool				IsParametric() const;
			void				SetParametric(bool bIsParametric);

		// parameters
		public:
			size_t				GetParamsCount() const;
			TXString			GetParamName(size_t paramIndex) const;
			TXString			GetParamLocalizedName(size_t paramIndex) const;
			bool				SetParamLocalizedName(size_t paramIndex, const TXString& name);
			// returns ((size_t) -1) if not found
			size_t				GetParamIndex(const TXString& paramName) const;

			// universal param name based
			EFieldStyle			GetParamStyle(const TXString& univParamName) const;
			TNumStyleClass		GetParamNumStyle(const TXString& univParamName) const;
			void				SetParamNumStyle(const TXString& univParamName, TNumStyleClass value);
			Byte				GetParamAccuracy(const TXString& univParamName) const;
			void				SetParamAccuracy(const TXString& univParamName, Byte value);
			TXString			GetParamValue(const TXString& univParamName) const;
			void				SetParamValue(const TXString& univParamName, const TXString& value);
			Sint32				GetParamLong(const TXString& univParamName) const;
			void				SetParamLong(const TXString& univParamName, Sint32 value);
			bool				GetParamBool(const TXString& univParamName) const;
			void				SetParamBool(const TXString& univParamName, bool value);
			double				GetParamReal(const TXString& univParamName) const;
			void				SetParamReal(const TXString& univParamName, double value);
			TXString			GetParamString(const TXString& univParamName) const;
			void				SetParamString(const TXString& univParamName, const TXString& value);

			// popup choices support
			size_t				PopupGetChoicesCount(const TXString& univParamName);
			void				PopupGetChoice(const TXString& univParamName, size_t index, TXString& outKey, TXString& outValue);
			void				PopupClearChoices(const TXString& univParamName);
			void				PopupSetChoices(const TXString& univParamName, const TXStringArray& keyValuePairs, bool append);

		// IFC
		public:
			bool				IsIFCRecord() const;
			void				GetIFCAttachedData(TMCObjectHandlesSTLArray& outArr) const;

		public:
			// index based
			// NOTE: Recommended use of universal parameter name based (above) functions because they are safer
			// !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
			EFieldStyle			/*Use univParamName funcsion instead*/	GetParamStyle(size_t paramIndex) const;
			TNumStyleClass		/*Use univParamName funcsion instead*/	GetParamNumStyle(size_t paramIndex) const;
			void				/*Use univParamName funcsion instead*/	SetParamNumStyle(size_t paramIndex, TNumStyleClass value);
			Byte				/*Use univParamName funcsion instead*/	GetParamAccuracy(size_t paramIndex) const;
			void				/*Use univParamName funcsion instead*/	SetParamAccuracy(size_t paramIndex, Byte value);
			TXString			/*Use univParamName funcsion instead*/	GetParamValue(size_t paramIndex) const;
			void				/*Use univParamName funcsion instead*/	SetParamValue(size_t paramIndex, const TXString& value);
			Sint32				/*Use univParamName funcsion instead*/	GetParamLong(size_t paramIndex) const;
			void				/*Use univParamName funcsion instead*/	SetParamLong(size_t paramIndex, Sint32 value);
			bool				/*Use univParamName funcsion instead*/	GetParamBool(size_t paramIndex) const;
			void				/*Use univParamName funcsion instead*/	SetParamBool(size_t paramIndex, bool value);
			double				/*Use univParamName funcsion instead*/	GetParamReal(size_t paramIndex) const;
			void				/*Use univParamName funcsion instead*/	SetParamReal(size_t paramIndex, double value);
			TXString			/*Use univParamName funcsion instead*/	GetParamString(size_t paramIndex) const;
			void				/*Use univParamName funcsion instead*/	SetParamString(size_t paramIndex, const TXString& value);

			size_t				/*Use univParamName funcsion instead*/	PopupGetChoicesCount(size_t paramIndex);
			void				/*Use univParamName funcsion instead*/	PopupGetChoice(size_t paramIndex, size_t index, TXString& outKey, TXString& outValue);
			void				/*Use univParamName funcsion instead*/	PopupClearChoices(size_t paramIndex);
			void				/*Use univParamName funcsion instead*/	PopupSetChoices(size_t paramIndex, const TXStringArray& keyValuePairs, bool append);

		// Tools
		public:
			// Return true if the specified object handle is record format
			static bool				IsRecordObject(MCObjectHandle hObj);
			static bool				IsRecordObject(MCObjectHandle hObj, const TXString& recordName);
			static MCObjectHandle	GetRecordObject(MCObjectHandle hObj, const TXString& recordName);

			static bool				IsIFCRecord(MCObjectHandle hObj);
			static bool				IsIFCRecord(MCObjectHandle hObj, const TXString& ifcName, ERecordIFCWrapMode mode);

			static void				GetIFCAttachedData(MCObjectHandle hIFCRecord, TMCObjectHandlesSTLArray& outArray);

		protected:
			size_t					GetParamIndexByUnivName(const TXString& univParamName) const;
			void					SpecifyIFCRecordType();
			void					SetParamStringI(size_t paramIndex, const TXString& value);
			inline ERecordIFCType	GetIfcRecordType() const
			{
				ERecordIFCType	result = ERecordIFCType::None;

				switch ( fIFCMode )
				{
				case ERecordIFCWrapMode::IFC:		result = ERecordIFCType::IFC;		break;
				case ERecordIFCWrapMode::IFCTag:	result = ERecordIFCType::IFCTag;	break;
				case ERecordIFCWrapMode::PSet:		result = ERecordIFCType::PSet;		break;
				case ERecordIFCWrapMode::None:		result = ERecordIFCType::None;		break;
				}

				return result;
			};

		protected:
			typedef std::unordered_map<TXString, size_t>		TUnviNameKeyMap;
			TUnviNameKeyMap		fmapUnivNameKey;

			ERecordIFCWrapMode	fIFCMode;		// specified by IFClib
		};
	}
}