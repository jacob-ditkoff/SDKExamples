//
//	Copyright  Nemetschek Vectorworks, Inc.
//	Use of this file is governed by the Nemetschek Vectorworks SDK License Agreement
//	http://developer.vectorworks.net/index.php?title=Vectorworks_SDK_License
//

#pragma once

namespace VectorWorks
{
	namespace Extension
	{
		// ---------------------------------------------------------------------------------------------------
		struct SGISCoord
		{
			double		fdLatitude;
			double		fdLongitude;

						SGISCoord()							{ fdLatitude = 0; fdLongitude = 0; }
						SGISCoord(double lat, double lon)	{ fdLatitude = lat; fdLongitude = lon; }
		};

		// ---------------------------------------------------------------------------------------------------
		typedef TXGenericArray< SGISCoord >			TVWArray_GISCoord;
		
		// ---------------------------------------------------------------------------------------------------
		// {E8E36752-2EF8-437D-8031-9D7A4E34BEA5}
		static const VWIID IID_GISSupport	= { 0xe8e36752, 0x2ef8, 0x437d, { 0x80, 0x31, 0x9d, 0x7a, 0x4e, 0x34, 0xbe, 0xa5 } };

		class DYNAMIC_ATTRIBUTE IGISSupport : public IVWUnknown
		{
		public:
			virtual VCOMError	VCOM_CALLTYPE SetLayer(MCObjectHandle hLayer) = 0;
			virtual VCOMError	VCOM_CALLTYPE AddLayer(MCObjectHandle hLayer) = 0;
			virtual VCOMError	VCOM_CALLTYPE EditWithUI() = 0;
			virtual VCOMError   VCOM_CALLTYPE ApplyNTV2Tranfrom( const TXString& targetProjWKT, const TXString& fileNTVFullPath ) = 0;

			virtual VCOMError	VCOM_CALLTYPE EnableGeoreferencing(bool enable) = 0;

			// Data accessors
			virtual VCOMError	VCOM_CALLTYPE GetUseDocumentSettings(bool& outValue) = 0;
			virtual VCOMError	VCOM_CALLTYPE SetUseDocumentSettings(bool value) = 0;

			virtual VCOMError	VCOM_CALLTYPE GetOrigin(double& outLat, double& outLon, double& outAngleToNorth) = 0;
			virtual VCOMError	VCOM_CALLTYPE SetOrigin(double lat, double lon, double angleToNorth) = 0;
			virtual VCOMError	VCOM_CALLTYPE GetApplyUseOriginTransform(bool& outValue) = 0;
			virtual VCOMError	VCOM_CALLTYPE SetApplyUseOriginTransform(bool value) = 0;
			virtual VCOMError	VCOM_CALLTYPE GetApplyImageTransform(bool& value) = 0;
			virtual VCOMError	VCOM_CALLTYPE GetProjection(TXString& outName) = 0;
			virtual VCOMError	VCOM_CALLTYPE GetProjectionLocalizedName(TXString& outProjectionName) = 0;
			virtual VCOMError	VCOM_CALLTYPE SetProjection(const TXString& value) = 0;
			virtual VCOMError	VCOM_CALLTYPE GetProjectionParam(const TXString& name, TXString& outValue) = 0;
			virtual VCOMError	VCOM_CALLTYPE SetProjectionParam(const TXString& name, const TXString& value) = 0;
			virtual VCOMError	VCOM_CALLTYPE GetProjectionWKT(bool esriStyle, TXString& outValue) = 0;
			virtual VCOMError	VCOM_CALLTYPE GetProjectionProj4(bool esriStyle, TXString& outValue) = 0;
			virtual VCOMError	VCOM_CALLTYPE SetProjectionEPSG(size_t projEPSG) = 0;
			virtual VCOMError	VCOM_CALLTYPE GetLayerProjectionEPSGDescription( MCObjectHandle srcLayer, size_t& outEPSG, TXString& outDescription, TXString& outGeoDatum, TXString& outVertDatum, TXString& outUnit ) = 0;

			virtual VCOMError	VCOM_CALLTYPE IsGeoreferenced(bool& outValue) = 0;
			virtual VCOMError	VCOM_CALLTYPE MoveGeographic(WorldPt& inOutCoord, double azimuth, double distance) = 0;
			virtual VCOMError	VCOM_CALLTYPE GetVectorworksCoordinate(const SGISCoord& inCoord, WorldPt& outCoord) = 0;
			virtual VCOMError	VCOM_CALLTYPE GetGeographicCoordinate(const WorldPt& inCoord, SGISCoord& outCoord) = 0;
			virtual VCOMError	VCOM_CALLTYPE GetVectorworksCoordinate(const TVWArray_GISCoord& inArrCoord, TVWArray_WorldPt& outArrCoord) = 0;
			virtual VCOMError	VCOM_CALLTYPE GetVectorworksCoordinate(const TVWArray_WorldPt& inCoord, const TXString& inProjWKT, TVWArray_WorldPt& outCoord) = 0;
			virtual VCOMError	VCOM_CALLTYPE GetGeographicCoordinate(const TVWArray_WorldPt& inArrCoord, TVWArray_GISCoord& outArrCoord) = 0;
			virtual VCOMError	VCOM_CALLTYPE CalcGreatCircle(const WorldPt& inStartCoord, const WorldPt& inEndCoord, size_t desiredPoints, TVWArray_WorldPt& outArrPoints, WorldCoord& outDistance, double& outAzimuth) = 0;

			virtual VCOMError	VCOM_CALLTYPE AngleToDMS(double inAngle, TXString& outDMS, const TXString& posDir = "", const TXString& negDir = "") = 0;

			// the projection info funciton provide access to the entire projection information as a string
			// they will work on the first layer added to the class
			virtual VCOMError	VCOM_CALLTYPE GetProjectionInfo(TXString& outInfo) = 0;

			virtual VCOMError	VCOM_CALLTYPE ImportShapefiles(TVWArray_IFileIdentifier arrShapeFiles) = 0;

			virtual VCOMError	VCOM_CALLTYPE MoveObjectToLayer( MCObjectHandle srcLayer, MCObjectHandle destLayer, MCObjectHandle hObject ) = 0;

			virtual VCOMError	VCOM_CALLTYPE ImportECWJP2Image( const IFileIdentifierPtr& fileID, IFileIdentifierPtr& outFile, bool bPNGImage = true, bool bWarpImage = true ) = 0;

			//Fetches the affine transformation coefficients for transforming between pixel/line (P,L) raster space, and projection coordinates (Xp,Yp) space ( if they are present ).
			virtual VCOMError	VCOM_CALLTYPE GetECWJP2ImageGeotransform( const IFileIdentifierPtr& fileID, TXString& outProjWKT, TVWArray_Double& outCoords, size_t& outSizeX, size_t& outSizeY, size_t& outSizeTransformedX, size_t& outSizeTransformedY ) = 0;

			virtual VCOMError	VCOM_CALLTYPE GetGeoTIFFImageGeotransform( const IFileIdentifierPtr& fileID, TXString& outProjWKT, TVWArray_Double& outCoords, size_t& outSizeX, size_t& outSizeY, size_t& outSizeTransformedX, size_t& outSizeTransformedY ) = 0;

			virtual VCOMError	VCOM_CALLTYPE ImportGeoTIFFImage( const IFileIdentifierPtr& fileID, IFileIdentifierPtr& outFile, bool bPNGImage = true, bool bWarpImage = true ) = 0;

		};

		// ---------------------------------------------------------------------------------------------------
		typedef VCOMPtr<IGISSupport>		IGISSupportPtr;
	}
}